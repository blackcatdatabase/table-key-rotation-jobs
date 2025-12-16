-- Auto-generated from schema-map-mysql.yaml (map@sha1:B9D3BE28A74392B9B389FDAFB493BD80FA1F6FA4)
-- engine: mysql
-- table:  key_rotation_jobs

ALTER TABLE key_rotation_jobs ADD CONSTRAINT fk_key_rotation_jobs_user FOREIGN KEY (executed_by) REFERENCES users(id) ON DELETE SET NULL;
