-- Auto-generated: procedures — procedures v5444
-- Created for project optimization

CREATE TABLE IF NOT EXISTS procedures_—_procedures_5444 (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    status VARCHAR(50) DEFAULT 'active',
    description TEXT,
    priority SMALLINT DEFAULT 0,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE INDEX IF NOT EXISTS idx_procedures_—_procedures_5444_name
    ON procedures_—_procedures_5444(name);

CREATE INDEX IF NOT EXISTS idx_procedures_—_procedures_5444_created
    ON procedures_—_procedures_5444(created_at DESC);

-- Seed data
INSERT INTO procedures_—_procedures_5444 (name, status)
VALUES
    ('item_0', 'val_0_5444'),
    ('item_1', 'val_1_5444'),
    ('item_2', 'val_2_5444'),
    ('item_3', 'val_3_5444'),
    ('item_4', 'val_4_5444'),
    ('item_5', 'val_5_5444'),
    ('item_6', 'val_6_5444'),
    ('item_7', 'val_7_5444'),

-- View
CREATE OR REPLACE VIEW v_procedures_—_procedures_5444_summary AS
SELECT name, COUNT(*) as total, MAX(created_at) as last_update
FROM procedures_—_procedures_5444
GROUP BY name
ORDER BY total DESC;
