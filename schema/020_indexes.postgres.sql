-- Auto-generated from schema-map-postgres.psd1 (map@mtime:2025-11-21T00:25:46Z)
-- engine: postgres
-- table:  key_rotation_jobs

CREATE INDEX IF NOT EXISTS idx_key_rotation_jobs_basename_sched ON key_rotation_jobs (basename, scheduled_at);
