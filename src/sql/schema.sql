-- Auto-generated: schema — database schema definition v2823
-- Created for project optimization

CREATE TABLE IF NOT EXISTS schema_—_database_schema_definition_2823 (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    counter INTEGER DEFAULT 0,
    description TEXT,
    status VARCHAR(50) DEFAULT 'active',
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE INDEX IF NOT EXISTS idx_schema_—_database_schema_definition_2823_name
    ON schema_—_database_schema_definition_2823(name);

CREATE INDEX IF NOT EXISTS idx_schema_—_database_schema_definition_2823_created
    ON schema_—_database_schema_definition_2823(created_at DESC);

-- Seed data
INSERT INTO schema_—_database_schema_definition_2823 (name, counter)
VALUES
    ('item_0', 'val_0_2823'),
    ('item_1', 'val_1_2823'),
    ('item_2', 'val_2_2823'),
    ('item_3', 'val_3_2823'),
    ('item_4', 'val_4_2823'),
    ('item_5', 'val_5_2823'),
    ('item_6', 'val_6_2823'),
    ('item_7', 'val_7_2823'),

-- View
CREATE OR REPLACE VIEW v_schema_—_database_schema_definition_2823_summary AS
SELECT name, COUNT(*) as total, MAX(created_at) as last_update
FROM schema_—_database_schema_definition_2823
GROUP BY name
ORDER BY total DESC;
