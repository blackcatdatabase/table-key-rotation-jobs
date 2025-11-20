<!-- Auto-generated from schema-map-postgres.psd1 @ 62c9c93 (2025-11-20T21:38:11+01:00) -->
# Definition – key_rotation_jobs

Planned and executed key rotation jobs.

## Columns
| Column | Type | Null | Default | Description | Notes |
|-------:|:-----|:----:|:--------|:------------|:------|
| id | BIGINT | — | AS | Surrogate primary key. |  |
| basename | VARCHAR(100) | NO | — | Key basename to rotate. |  |
| target_version | INTEGER | YES | — | Desired target version (nullable). |  |
| scheduled_at | TIMESTAMPTZ(6) | YES | — | Scheduled time (UTC). |  |
| started_at | TIMESTAMPTZ(6) | YES | — | Start time (UTC). |  |
| finished_at | TIMESTAMPTZ(6) | YES | — | Finish time (UTC). |  |
| status | TEXT | NO | 'pending' | Job status. | enum: pending, running, done, failed, cancelled |
| attempts | INTEGER | NO | 0 | Number of attempts. |  |
| executed_by | BIGINT | YES | — | Operator user id (FK users.id), optional. |  |
| result | TEXT | YES | — | Result/summary text. |  |
| created_at | TIMESTAMPTZ(6) | NO | CURRENT_TIMESTAMP(6) | Creation timestamp (UTC). |  |