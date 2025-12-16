-- Auto-generated from schema-views-mysql.yaml (map@sha1:FFA9A9D6FA9EE079B0DAEBB6FEE023C138E8FFA1)
-- engine: mysql
-- table:  key_rotation_jobs

-- Contract view for [key_rotation_jobs]
CREATE OR REPLACE ALGORITHM=MERGE SQL SECURITY INVOKER VIEW vw_key_rotation_jobs AS
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
