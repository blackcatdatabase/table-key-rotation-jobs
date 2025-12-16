-- Auto-generated from schema-map-postgres.yaml (map@sha1:FAEA49A5D5F8FAAD9F850D0F430ED451C5C1D707)
-- engine: postgres
-- table:  key_rotation_jobs

CREATE INDEX IF NOT EXISTS idx_key_rotation_jobs_basename_sched ON key_rotation_jobs (basename, scheduled_at);
