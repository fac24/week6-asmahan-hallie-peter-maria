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
    ('Parsely', 2, 5),
    ('Basil', 2, 5),
    ('Thyme', 2, 5),
    ('Rosemary', 2, 5),
    ('Dill', 2, 5),
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