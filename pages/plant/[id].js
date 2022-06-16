import Layout from "../../components/layout";
import Image from "next/image";
// getting categories of plants
import { getAllIds, getPlant } from "../../database/model.js";


export async function getStaticPaths() {
  const allPlantIds = await getAllIds();

  const paths = allPlantIds.map((obj) => {
    return {
      params: { id: String(obj.id) },
    };
  });

  return {
    paths,
    fallback: false,
  };
}


export async function getStaticProps({ params }) {
  const plantData = await getPlant(params.id);
  return {
    props: {
        plantData,
    },
  };
}

export default function Plant({plantData}) {
    console.log(plantData)
  return (
    <Layout home >
         <div>
      <section className="plants">
        <ul>
          {plantData ? (
              <>
                    <div>
                        <h2>{plantData[0].plant_name}</h2>
                    <Image
                        //  className={styles.singleImage}
                         src={plantData[0].img_url}
                         height={200}
                         width={250}
                         alt={plantData[0].plant_name}
                    />
                      <p>{plantData[0].plant_description}</p>
                    </div>
                    <form
                     //onSubmit={handleSubmit} action="/api/basket"
                     >
                    <lable htmlFor="size">Select your size:</lable>
                    <select 
                    id="name"
                    name="name"
                    //We will need a use state to implement functinality
                    //onChange={(e) => setSize(e.target.value)}
                    >
                    <option value="seedling"> Seedling </option>
                     <option value="small"> Small </option>
                      <option value="medium"> Medium </option>
                    </select>
                    <br></br>
                    <label htmlFor="quantity"> Quantity </label>
                    <input
                    type="number"
                    min="1"
                     max="10"
                    name="quantity"
                    id="quantity"
                    //onChange={(e) => setQuantity(e.target.value)}
                     ></input>
                     <button type="submit">Add to basket</button>
                    </form>
                    </>

          ) : (
            <li>No results found</li>
          )}
        </ul>
      </section>
    </div> 
    </Layout >
  );
}

// {
//   id: 8,
//   plant_name: 'Thyme',
//   plant_kind: 2,
//   price: 5,
//   img_url: 'https://unsplash.com/photos/1iS_6_MgjcA',
//   plant_description: 'description here'
// }