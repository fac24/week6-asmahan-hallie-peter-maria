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

export function getPlant(id) {
  const GET_PLANT = `SELECT * FROM plants WHERE id = $1`;
  return db.query(GET_PLANT, [id]).then((data) => {
    return data.rows;
  });
}