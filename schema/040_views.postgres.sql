-- Auto-generated from schema-views-postgres.yaml (map@sha1:3C365C10BD489376A27944AE10F143E1BE4D3BCF)
-- engine: postgres
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
