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
    ('Tomatoes', 3, 5, "https://images.unsplash.com/photo-1518977822534-7049a61ee0c2?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTN8fHRvbWF0b3N8ZW58MHx8MHx8&auto=format&fit=crop&w=700&q=60"),
    ('Peppers', 3, 5, "https://images.unsplash.com/photo-1592548868664-f8b4e4b1cfb7?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NHx8cGVwcGVyc3xlbnwwfHwwfHw%3D&auto=format&fit=crop&w=700&q=60"),
    ('Carrots', 3, 5, "https://images.unsplash.com/photo-1639427444459-85a1b6ac2d68?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8OXx8Y2Fycm90c3xlbnwwfHwwfHw%3D&auto=format&fit=crop&w=700&q=60"),
    ('Aubergine', 3, 5, "https://images.unsplash.com/photo-1639428134238-b548770d4b77?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8OHx8YXViZXJnaW5lfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=700&q=60"),
    ('Chilli', 3, 5, "https://images.unsplash.com/photo-1615375557967-227168b41ae2?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8M3x8Y2hpbGxpfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=700&q=60"),
    ('Lavender', 4, 5),
    ('Roses', 4, 5),
    ('Peony', 4, 5),
    ('Sunflower', 4, 5),
    ('Daisy', 4, 5);

COMMIT;