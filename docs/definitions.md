# key_rotation_jobs

Planned and executed key rotation jobs.

## Columns
| Column | Type | Null | Default | Description |
| --- | --- | --- | --- | --- |
| created_at | mysql: DATETIME(6) / postgres: TIMESTAMPTZ(6) | NO | CURRENT_TIMESTAMP(6) | Creation timestamp (UTC). |
| id | BIGINT | NO |  | Surrogate primary key. |
| scheduled_at | mysql: DATETIME(6) / postgres: TIMESTAMPTZ(6) | YES |  | Scheduled time (UTC). |
| executed_by | BIGINT | YES |  | Operator user id (FK users.id), optional. |
| target_version | mysql: INT / postgres: INTEGER | YES |  | Desired target version (nullable). |
| attempts | mysql: INT / postgres: INTEGER | NO | 0 | Number of attempts. |
| status | mysql: ENUM('pending','running','done','failed','cancelled') / postgres: TEXT | NO | pending | Job status. (enum: pending, running, done, failed, cancelled) |
| finished_at | mysql: DATETIME(6) / postgres: TIMESTAMPTZ(6) | YES |  | Finish time (UTC). |
| basename | VARCHAR(100) | NO |  | Key basename to rotate. |
| result | TEXT | YES |  | Result/summary text. |
| started_at | mysql: DATETIME(6) / postgres: TIMESTAMPTZ(6) | YES |  | Start time (UTC). |

## Engine Details

### mysql

Indexes:
| Name | Columns | SQL |
| --- | --- | --- |
| idx_key_rotation_jobs_basename_sched | basename,scheduled_at | INDEX idx_key_rotation_jobs_basename_sched (basename, scheduled_at) |

Foreign keys:
| Name | Columns | References | Actions |
| --- | --- | --- | --- |
| fk_key_rotation_jobs_user | executed_by | users(id) | ON DELETE SET |

### postgres

Indexes:
| Name | Columns | SQL |
| --- | --- | --- |
| idx_key_rotation_jobs_basename_sched | basename,scheduled_at | CREATE INDEX IF NOT EXISTS idx_key_rotation_jobs_basename_sched ON key_rotation_jobs (basename, scheduled_at) |

Foreign keys:
| Name | Columns | References | Actions |
| --- | --- | --- | --- |
| fk_key_rotation_jobs_user | executed_by | users(id) | ON DELETE SET |

## Engine differences

## Views
| View | Engine | Flags | File |
| --- | --- | --- | --- |
| vw_key_rotation_jobs | mysql | algorithm=MERGE, security=INVOKER | [../schema/040_views.mysql.sql](../schema/040_views.mysql.sql) |
| vw_key_rotation_jobs | postgres |  | [../schema/040_views.postgres.sql](../schema/040_views.postgres.sql) |
