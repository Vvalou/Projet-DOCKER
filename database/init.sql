CREATE TABLE items (
    id SERIAL PRIMARY KEY,
    title VARCHAR(255),
    description TEXT,
    created_at TIMESTAMP DEFAULT NOW()
);

INSERT INTO items (title, description) VALUES
('Item 1', 'Description 1'),
('Item 2', 'Description 2'),
('Item 3', 'Description 3'),
('Item 4', 'Description 4'),
('Item 5', 'Description 5');