-- Auto-generated from schema-map-mysql.psd1 (map@c5e4097)
-- engine: mysql
-- table:  key_rotation_jobs
CREATE TABLE IF NOT EXISTS key_rotation_jobs (
  id BIGINT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
  basename VARCHAR(100) NOT NULL,
  target_version INT NULL,
  scheduled_at DATETIME(6) NULL,
  started_at DATETIME(6) NULL,
  finished_at DATETIME(6) NULL,
  status ENUM('pending','running','done','failed','cancelled') NOT NULL DEFAULT 'pending',
  attempts INT NOT NULL DEFAULT 0,
  executed_by BIGINT UNSIGNED NULL,
  result TEXT NULL,
  created_at DATETIME(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  INDEX idx_key_rotation_jobs_basename_sched (basename, scheduled_at)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;
