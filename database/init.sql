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
    ('Jade tree', 1, 5, "https://media.istockphoto.com/photos/succulent-houseplant-crassula-in-a-pot-on-a-white-background-picture-id1132486042?b=1&k=20&m=1132486042&s=170667a&w=0&h=4CWVajGNo4gSN1umXM19BAtkZLYgJ8nbqBo-NWRNhkM=", "description here"),
    ('Aloe', 1, 5, "https://media.istockphoto.com/photos/aloe-vera-plant-picture-id182784203?b=1&k=20&m=182784203&s=170667a&w=0&h=oUreQXmLfKCB1BGeZEgSo65keJvlKrkPuncP88_KlT8=", "description here"),
    ('Cactus', 1, 5, "https://images.unsplash.com/photo-1509937528035-ad76254b0356?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8OHx8cGluY3VzaGlvbiUyMGNhY3R1c3xlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60", "description here"),
    ('Wax Agave', 1, 5, "https://media.istockphoto.com/photos/succulent-plant-close-up-fresh-leaves-detail-of-echeveria-peacock-picture-id1323859192?b=1&k=20&m=1323859192&s=170667a&w=0&h=n-T_OGZJ3JRzvgF_SONdFKRLr4R66xuUkzJEcaVE1u8=", "description here"),
    ('Kalanchoe', 1, 5, "https://media.istockphoto.com/photos/red-kalanchoe-flowers-on-a-wooden-background-picture-id1202667570?b=1&k=20&m=1202667570&s=170667a&w=0&h=OIS5hhK07XkN8amBNRxsB9GV8qv4IEHyfWl-2zp1rvk=", "description here"),
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
    ('Lavender', 4, 5, "https://images.unsplash.com/photo-1445510491599-c391e8046a68?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2070&q=80", "description here"),
    ('Roses', 4, 5, "https://images.unsplash.com/photo-1556712691-5c39e0e32a8e?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2070&q=80", "description here"),
    ('Peony', 4, 5, "https://images.unsplash.com/photo-1626976109816-08cef8600d7d?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2013&q=80", "description here"),
    ('Sunflower', 4, 5, "https://images.unsplash.com/photo-1552160793-cbaf3ebcba72?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2070&q=80", "description here"),
    ('Daisy', 4, 5, "https://images.unsplash.com/photo-1560717789-0ac7c58ac90a?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2070&q=80", "description here");

COMMIT;