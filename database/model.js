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
