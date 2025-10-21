# Definition – key_rotation_jobs

Planned and executed key rotation jobs.

## Columns
| Column | Type | Null | Default | Description | Notes |
|-------:|:-----|:----:|:--------|:------------|:------|
| id | BIGINT UNSIGNED | — | — | Surrogate primary key. |  |
| basename | VARCHAR(100) | NO | — | Key basename to rotate. |  |
| target_version | INT | YES | — | Desired target version (nullable). |  |
| scheduled_at | DATETIME(6) | YES | — | Scheduled time (UTC). |  |
| started_at | DATETIME(6) | YES | — | Start time (UTC). |  |
| finished_at | DATETIME(6) | YES | — | Finish time (UTC). |  |
| status | ENUM('pending','running','done','failed','cancelled') | NO | ''pending'' | Job status. | enum: pending, running, done, failed, cancelled |
| attempts | INT | NO | 0 | Number of attempts. |  |
| executed_by | BIGINT UNSIGNED | YES | — | Operator user id (FK users.id), optional. |  |
| result | TEXT | YES | — | Result/summary text. |  |
| created_at | DATETIME(6) | NO | CURRENT_TIMESTAMP(6) | Creation timestamp (UTC). |  |
