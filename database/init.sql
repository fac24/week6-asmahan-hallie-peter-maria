BEGIN;

DROP TABLE IF EXISTS plants, plant_type CASCADE;

CREATE TABLE plant_type(
    id SERIAL PRIMARY KEY,
    plant_kind VARCHAR(255),
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

CREATE TABLE basket (
    id SERIAL PRIMARY KEY, 
    plant_id INTEGER REFERENCES plants(id), 
    sid TEXT
);


INSERT INTO plant_type (plant_kind, category_img) VALUES 
('succulents', 'https://images.unsplash.com/photo-1520302630591-fd1c66edc19d?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2070&q=80'),
('herbs', 'https://images.unsplash.com/photo-1582012107971-5aae799a70f2?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2070&q=80'),
('vegetables', 'https://images.unsplash.com/photo-1488459716781-31db52582fe9?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2070&q=80'),
('garden plants', 'https://images.unsplash.com/photo-1627448294879-04d6b2be4a2b?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2070&q=80');


INSERT INTO plants (plant_name, plant_kind, price, img_url, plant_description) VALUES 
    ('Jade tree', 1, 5, 'https://media.istockphoto.com/photos/succulent-houseplant-crassula-in-a-pot-on-a-white-background-picture-id1132486042?b=1&k=20&m=1132486042&s=170667a&w=0&h=4CWVajGNo4gSN1umXM19BAtkZLYgJ8nbqBo-NWRNhkM=', 'Attract a good fortune to you home'),
    ('Cactus', 1, 5, 'https://images.unsplash.com/photo-1509937528035-ad76254b0356?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8OHx8cGluY3VzaGlvbiUyMGNhY3R1c3xlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60', 'So minimaistic'),
    ('Wax Agave', 1, 5, 'https://media.istockphoto.com/photos/succulent-plant-close-up-fresh-leaves-detail-of-echeveria-peacock-picture-id1323859192?b=1&k=20&m=1323859192&s=170667a&w=0&h=n-T_OGZJ3JRzvgF_SONdFKRLr4R66xuUkzJEcaVE1u8=', 'Rose in the world of cactuses'),
    ('Kalanchoe', 1, 5, 'https://media.istockphoto.com/photos/red-kalanchoe-flowers-on-a-wooden-background-picture-id1202667570?b=1&k=20&m=1202667570&s=170667a&w=0&h=OIS5hhK07XkN8amBNRxsB9GV8qv4IEHyfWl-2zp1rvk=', 'Blooming marvelous'),
    ('Parsley', 2, 5, 'https://images.unsplash.com/photo-1588879460618-9249e7d947d1?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NHx8cGFyc2xleXxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=700&q=60', 'Every salad needs it'),
    ('Basil', 2, 5, 'https://images.unsplash.com/photo-1536777206078-5e694d16c678?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTB8fGJhc2lsfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60', 'Good pair for tomatoes and pastas'),
    ('Thyme', 2, 5, 'https://images.unsplash.com/photo-1621014882299-9ec639c125f1?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8OHx8dGh5bWV8ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60', 'A good old thyme'),
    ('Rosemary', 2, 5, 'https://images.unsplash.com/photo-1603129624917-3c579e864025?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NXx8cm9zZW1hcnl8ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60', 'A fragrant evergreen shrub with needle-like leaves and two-lipped'),
    ('Tomatoes', 3, 5, 'https://images.unsplash.com/photo-1518977822534-7049a61ee0c2?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTN8fHRvbWF0b3N8ZW58MHx8MHx8&auto=format&fit=crop&w=700&q=60', 'Get your freshly ripe and flavourable tomatos'),
    ('Peppers', 3, 5, 'https://images.unsplash.com/photo-1592548868664-f8b4e4b1cfb7?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NHx8cGVwcGVyc3xlbnwwfHwwfHw%3D&auto=format&fit=crop&w=700&q=60', 'These peppers are great with a salad'),
    ('Carrots', 3, 5, 'https://images.unsplash.com/photo-1639427444459-85a1b6ac2d68?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8OXx8Y2Fycm90c3xlbnwwfHwwfHw%3D&auto=format&fit=crop&w=700&q=60', 'Carrots freshly picked'),
    ('Aubergine', 3, 5, 'https://images.unsplash.com/photo-1639428134238-b548770d4b77?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8OHx8YXViZXJnaW5lfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=700&q=60', 'Aubegines in stock for purchase'),
    ('Lavender', 4, 5, 'https://images.unsplash.com/photo-1445510491599-c391e8046a68?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2070&q=80', 'Elegant and softly purple'),
    ('Peony', 4, 5, 'https://images.unsplash.com/photo-1626976109816-08cef8600d7d?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2013&q=80', 'Posh and beautiful'),
    ('Sunflower', 4, 5, 'https://images.unsplash.com/photo-1552160793-cbaf3ebcba72?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2070&q=80', 'Small brother of the sun, for those rich sunnny days'),
    ('Daisy', 4, 5, 'https://images.unsplash.com/photo-1560717789-0ac7c58ac90a?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2070&q=80', 'Grab a bit of shunshine in your life');


COMMIT;