-- Auto-generated from schema-map-mysql.yaml (map@sha1:0D716345C0228A9FD8972A3D31574000D05317DB)
-- engine: mysql
-- table:  key_rotation_jobs

ALTER TABLE key_rotation_jobs ADD CONSTRAINT fk_key_rotation_jobs_user FOREIGN KEY (executed_by) REFERENCES users(id) ON DELETE SET NULL;
