import db from "./connection"

export function getCategories() {

    const get_categories = `SELECT plant_kind FROM plant_type`;
    return db.query(get_categories).then((data) => { console.log(data.rows) });
    //console.log(data.rows);
    //const catagory = category.rows
    //return catagory
}
