import db from "./connection";

export function getCategories() {
  const GET_CATEGORIES = `SELECT plant_kind FROM plant_type`;
  return db.query(GET_CATEGORIES).then((data) => {
    return data.rows;
  });
}
