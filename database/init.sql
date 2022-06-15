BEGIN;

DROP TABLE IF EXISTS plants, plant_type CASCADE;

CREATE TABLE plant_type(
    id SERIAL PRIMARY KEY,
    plant_kind VARCHAR(255)
);

CREATE TABLE plants (
    id SERIAL PRIMARY KEY,
    plant_name VARCHAR(255),
    plant_kind INTEGER REFERENCES plant_type(id),
    price INTEGER,
    img_url TEXT NOT NULL,
    plant_description TEXT
);

INSERT INTO plant_type (plant_kind) VALUES 
('succulents'),
('herbs'),
('vegetables'),
('garden plants');


INSERT INTO plants (plant_name, plant_kind, price, img_url, plant_description) VALUES 
    ('Jade tree', 1, 5, "URL HERE", "description here"),
    ('Aloe', 1, 5),
    ('Yuca', 1, 5),
    ('Wax Agave', 1, 5),
    ('Paddle', 1, 5),
    ('Parsely', 2, 5, "https://images.unsplash.com/photo-1588879460618-9249e7d947d1?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NHx8cGFyc2xleXxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=700&q=60", "description here"),
    ('Basil', 2, 5, "https://images.unsplash.com/photo-1536777206078-5e694d16c678?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTB8fGJhc2lsfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60", "description here"),
    ('Thyme', 2, 5, "https://unsplash.com/photos/1iS_6_MgjcA", "description here"),
    ('Rosemary', 2, 5, "https://unsplash.com/photos/1iS_6_MgjcA", "description here"),
    ('Mint', 2, 5, "https://unsplash.com/photos/1iS_6_MgjcA", "description here"),
    ('Tomatoes', 3, 5),
    ('Peppers', 3, 5),
    ('Carrots', 3, 5),
    ('Courgette', 3, 5),
    ('Chilli', 3, 5),
    ('Lavender', 4, 5),
    ('Roses', 4, 5),
    ('Peony', 4, 5),
    ('Sunflower', 4, 5),
    ('Daisy', 4, 5);

COMMIT;