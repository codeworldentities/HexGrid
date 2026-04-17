-- Auto-generated: stored procedure v8327
-- Created for project optimization

CREATE TABLE IF NOT EXISTS stored_procedure_8327 (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    email VARCHAR(255),
    priority SMALLINT DEFAULT 0,
    metadata JSONB,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE INDEX IF NOT EXISTS idx_stored_procedure_8327_name
    ON stored_procedure_8327(name);

CREATE INDEX IF NOT EXISTS idx_stored_procedure_8327_created
    ON stored_procedure_8327(created_at DESC);

-- Seed data
INSERT INTO stored_procedure_8327 (name, email)
VALUES
    ('item_0', 'val_0_8327'),
    ('item_1', 'val_1_8327'),
    ('item_2', 'val_2_8327'),
    ('item_3', 'val_3_8327'),
    ('item_4', 'val_4_8327'),
    ('item_5', 'val_5_8327'),
    ('item_6', 'val_6_8327'),
    ('item_7', 'val_7_8327'),

-- View
CREATE OR REPLACE VIEW v_stored_procedure_8327_summary AS
SELECT name, COUNT(*) as total, MAX(created_at) as last_update
FROM stored_procedure_8327
GROUP BY name
ORDER BY total DESC;
