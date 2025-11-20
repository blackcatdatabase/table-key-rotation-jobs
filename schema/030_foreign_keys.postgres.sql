-- Auto-generated from schema-map-postgres.psd1 (map@62c9c93)
-- engine: postgres
-- table:  key_rotation_jobs
ALTER TABLE key_rotation_jobs ADD CONSTRAINT fk_key_rotation_jobs_user FOREIGN KEY (executed_by) REFERENCES users(id) ON DELETE SET NULL;
