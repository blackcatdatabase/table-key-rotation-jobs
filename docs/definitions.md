# key_rotation_jobs

Planned and executed key rotation jobs.

## Columns
| Column | Type | Null | Default | Description |
| --- | --- | --- | --- | --- |
| attempts | INT | NO | 0 | Number of attempts. |
| basename | VARCHAR(100) | NO |  | Key basename to rotate. |
| created_at | DATETIME(6) | NO | CURRENT_TIMESTAMP(6) | Creation timestamp (UTC). |
| executed_by | BIGINT | YES |  | Operator user id (FK users.id), optional. |
| finished_at | DATETIME(6) | YES |  | Finish time (UTC). |
| id | BIGINT | NO |  | Surrogate primary key. |
| result | TEXT | YES |  | Result/summary text. |
| scheduled_at | DATETIME(6) | YES |  | Scheduled time (UTC). |
| started_at | DATETIME(6) | YES |  | Start time (UTC). |
| status | ENUM('pending','running','done','failed','cancelled') | NO | pending | Job status. (enum: pending, running, done, failed, cancelled) |
| target_version | INT | YES |  | Desired target version (nullable). |

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
| vw_key_rotation_jobs | mysql | algorithm=MERGE, security=INVOKER | [schema\040_views.mysql.sql](schema\040_views.mysql.sql) |
| vw_key_rotation_jobs | postgres |  | [schema\040_views.postgres.sql](schema\040_views.postgres.sql) |
