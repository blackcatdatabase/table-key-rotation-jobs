-- Auto-generated from schema-views-mysql.psd1 (map@mtime:2025-10-24T09:19:46Z)
-- engine: mysql
-- table:  key_rotation_jobs
-- Contract view for [key_rotation_jobs]
CREATE OR REPLACE VIEW vw_key_rotation_jobs AS
SELECT
  id,
  basename,
  target_version,
  scheduled_at,
  started_at,
  finished_at,
  status,
  attempts,
  executed_by,
  result,
  created_at
FROM key_rotation_jobs;
