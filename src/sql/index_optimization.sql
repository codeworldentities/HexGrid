-- Auto-generated: index optimization v9132
-- Created for project optimization

CREATE TABLE IF NOT EXISTS index_optimization_9132 (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    priority SMALLINT DEFAULT 0,
    counter INTEGER DEFAULT 0,
    score DECIMAL(10,2),
    status VARCHAR(50) DEFAULT 'active',
    is_active BOOLEAN DEFAULT TRUE,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE INDEX IF NOT EXISTS idx_index_optimization_9132_name
    ON index_optimization_9132(name);

CREATE INDEX IF NOT EXISTS idx_index_optimization_9132_created
    ON index_optimization_9132(created_at DESC);

-- Seed data
INSERT INTO index_optimization_9132 (name, priority)
VALUES
    ('item_0', 'val_0_9132'),
    ('item_1', 'val_1_9132'),
    ('item_2', 'val_2_9132'),
    ('item_3', 'val_3_9132'),
    ('item_4', 'val_4_9132'),
    ('item_5', 'val_5_9132'),
    ('item_6', 'val_6_9132'),
    ('item_7', 'val_7_9132');

-- View
CREATE OR REPLACE VIEW v_index_optimization_9132_summary AS
SELECT name, COUNT(*) as total, MAX(created_at) as last_update
FROM index_optimization_9132
GROUP BY name
ORDER BY total DESC;
