-- Auto-generated from schema-map-postgres.psd1 (map@mtime:2025-10-24T09:46:38Z)
-- engine: postgres
-- table:  key_rotation_jobs
CREATE INDEX idx_key_rotation_jobs_basename_sched ON key_rotation_jobs (basename, scheduled_at);
