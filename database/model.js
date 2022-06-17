import db from "./connection";

export function getCategories() {
  const GET_CATEGORIES = `SELECT * FROM plant_type`;
  return db.query(GET_CATEGORIES).then((data) => {
    return data.rows;
  });
}

export function getCategoryPlants(id) {
  const GET_PLANTS = `SELECT * FROM plants WHERE plant_kind = $1`;
  return db.query(GET_PLANTS, [id]).then((data) => {
    return data.rows;
  });
}

export function getAllIds() {
  const SELECT_ALL_IDs = `SELECT id FROM plants`;
  return db.query(SELECT_ALL_IDs).then((result) => {
    return result.rows;
  });
}

export function getPlant(id) {
  const GET_PLANT = `SELECT * FROM plants WHERE id = $1`;
  return db.query(GET_PLANT, [id]).then((data) => {
    return data.rows;
  });
}

export function addToBasket(plant_id, sid) {
  const insert = `INSERT INTO basket (plant_id, sid) VALUES ($1, $2)`;
  return db.query(insert, [plant_id, sid]);
}

export function getBasketProducts(sid) {
  const select = /*sql*/ `
    SELECT plants.id, plants.plant_name, plant.price, plant.img_url
    FROM basket JOIN plants ON basket.plants_id = plants.id
    WHERE sid = $1
  `;
  return db.query(select, [sid]).then((res) => res.rows);
}