import db from "./connection";

export function getCategories() {
  const GET_CATEGORIES = `SELECT * FROM plant_type`;
  return db.query(GET_CATEGORIES).then((data) => {
    return data.rows;
  });
}

