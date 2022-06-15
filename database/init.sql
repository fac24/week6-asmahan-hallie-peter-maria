BEGIN;

DROP TABLE IF EXISTS plants, plant_type CASCADE;

CREATE TABLE plant_type(
    id SERIAL PRIMARY KEY,
    plant_kind VARCHAR(255)
    category_img TEXT
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
('succulents', "https://images.unsplash.com/photo-1520302630591-fd1c66edc19d?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2070&q=80"),
('herbs', "https://images.unsplash.com/photo-1582012107971-5aae799a70f2?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2070&q=80"),
('vegetables', "https://images.unsplash.com/photo-1488459716781-31db52582fe9?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2070&q=80"),
('garden plants', "https://images.unsplash.com/photo-1627448294879-04d6b2be4a2b?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2070&q=80");


INSERT INTO plants (plant_name, plant_kind, price, img_url, plant_description) VALUES 
    ('Jade tree', 1, 5, "https://media.istockphoto.com/photos/succulent-houseplant-crassula-in-a-pot-on-a-white-background-picture-id1132486042?b=1&k=20&m=1132486042&s=170667a&w=0&h=4CWVajGNo4gSN1umXM19BAtkZLYgJ8nbqBo-NWRNhkM=", "description here"),
    ('Aloe', 1, 5, "https://media.istockphoto.com/photos/aloe-vera-plant-picture-id182784203?b=1&k=20&m=182784203&s=170667a&w=0&h=oUreQXmLfKCB1BGeZEgSo65keJvlKrkPuncP88_KlT8=", "description here"),
    ('Cactus', 1, 5, "https://images.unsplash.com/photo-1509937528035-ad76254b0356?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8OHx8cGluY3VzaGlvbiUyMGNhY3R1c3xlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60", "description here"),
    ('Wax Agave', 1, 5, "https://media.istockphoto.com/photos/succulent-plant-close-up-fresh-leaves-detail-of-echeveria-peacock-picture-id1323859192?b=1&k=20&m=1323859192&s=170667a&w=0&h=n-T_OGZJ3JRzvgF_SONdFKRLr4R66xuUkzJEcaVE1u8=", "description here"),
    ('Kalanchoe', 1, 5, "https://media.istockphoto.com/photos/red-kalanchoe-flowers-on-a-wooden-background-picture-id1202667570?b=1&k=20&m=1202667570&s=170667a&w=0&h=OIS5hhK07XkN8amBNRxsB9GV8qv4IEHyfWl-2zp1rvk=", "description here"),
    ('Parsley', 2, 5, "https://images.unsplash.com/photo-1588879460618-9249e7d947d1?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NHx8cGFyc2xleXxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=700&q=60", "description here"),
    ('Basil', 2, 5, "https://images.unsplash.com/photo-1536777206078-5e694d16c678?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTB8fGJhc2lsfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60", "description here"),
    ('Thyme', 2, 5, "https://unsplash.com/photos/1iS_6_MgjcA", "description here"),
    ('Rosemary', 2, 5, "https://unsplash.com/photos/1iS_6_MgjcA", "description here"),
    ('Mint', 2, 5, "https://unsplash.com/photos/1iS_6_MgjcA", "description here"),
    ('Tomatoes', 3, 5, "https://images.unsplash.com/photo-1518977822534-7049a61ee0c2?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTN8fHRvbWF0b3N8ZW58MHx8MHx8&auto=format&fit=crop&w=700&q=60", "get your freshly ripe and flavourable tomato's"),
    ('Peppers', 3, 5, "https://images.unsplash.com/photo-1592548868664-f8b4e4b1cfb7?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NHx8cGVwcGVyc3xlbnwwfHwwfHw%3D&auto=format&fit=crop&w=700&q=60", "these peppers are great with a salad"),
    ('Carrots', 3, 5, "https://images.unsplash.com/photo-1639427444459-85a1b6ac2d68?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8OXx8Y2Fycm90c3xlbnwwfHwwfHw%3D&auto=format&fit=crop&w=700&q=60", "carrots freshly picked"),
    ('Aubergine', 3, 5, "https://images.unsplash.com/photo-1639428134238-b548770d4b77?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8OHx8YXViZXJnaW5lfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=700&q=60", "aubegines in stock for purchase"),
    ('Chilli', 3, 5, "https://images.unsplash.com/photo-1615375557967-227168b41ae2?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8M3x8Y2hpbGxpfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=700&q=60", "grab a little spice in your life"),
    ('Lavender', 4, 5, "https://images.unsplash.com/photo-1445510491599-c391e8046a68?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2070&q=80", "description here"),
    ('Roses', 4, 5, "https://images.unsplash.com/photo-1556712691-5c39e0e32a8e?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2070&q=80", "description here"),
    ('Peony', 4, 5, "https://images.unsplash.com/photo-1626976109816-08cef8600d7d?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2013&q=80", "description here"),
    ('Sunflower', 4, 5, "https://images.unsplash.com/photo-1552160793-cbaf3ebcba72?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2070&q=80", "description here"),
    ('Daisy', 4, 5, "https://images.unsplash.com/photo-1560717789-0ac7c58ac90a?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2070&q=80", "description here");


COMMIT;