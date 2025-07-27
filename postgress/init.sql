CREATE TABLE IF NOT EXISTS table (
    id SERIAL PRIMARY KEY,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    data JSONB
);

-- Only the absolutely necessary index
CREATE INDEX idx_table_data ON mytable USING GIN (data);
