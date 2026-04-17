-- Auto-generated: view creation v5384
-- Created for project optimization

CREATE TABLE IF NOT EXISTS view_creation_5384 (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    is_active BOOLEAN DEFAULT TRUE,
    email VARCHAR(255),
    counter INTEGER DEFAULT 0,
    description TEXT,
    priority SMALLINT DEFAULT 0,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE INDEX IF NOT EXISTS idx_view_creation_5384_name
    ON view_creation_5384(name);

CREATE INDEX IF NOT EXISTS idx_view_creation_5384_created
    ON view_creation_5384(created_at DESC);

-- Seed data
INSERT INTO view_creation_5384 (name, is_active)
VALUES
    ('item_0', 'val_0_5384'),
    ('item_1', 'val_1_5384'),
    ('item_2', 'val_2_5384'),
    ('item_3', 'val_3_5384');

-- View
CREATE OR REPLACE VIEW v_view_creation_5384_summary AS
SELECT name, COUNT(*) as total, MAX(created_at) as last_update
FROM view_creation_5384
GROUP BY name
ORDER BY total DESC;
