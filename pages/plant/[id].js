import Layout from "../../components/layout";
import Image from "next/image";
// getting categories of plants
import { getPlant } from "../../database/model.js";
//import { useState } from "react/cjs/react.production.min";




export async function getServerSideProps({ params }) {
  const plantData = await getPlant(params.id);
  return {
    props: {
        plantData,
    },
  };
}

export default function Plant({plantData}) {
    // const [price, setPrice] = useState(plantData[0].price);
    // const [quantity, setQuantity] = useState(1)

  return (
    <Layout >
         <div>
      <section className="plants">
          {plantData ? (
              <>
                    <div>
                        <h2>{plantData[0].plant_name}</h2>
                    <Image
                        //  className={styles.singleImage}
                         src={plantData[0].img_url}
                         height={300}
                         width={400}
                         alt={plantData[0].plant_name}
                    />
                      <p>{plantData[0].plant_description}</p>
                      <p>From £{plantData[0].price - 2}</p>
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
                     <option value="seedling"> Seedling £{plantData[0].price - 2}</option>
                     <option value="small"> Small £{plantData[0].price}</option>
                     <option value="medium"> Medium £{plantData[0].price + 3}</option>
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
            <p>Product not found.</p>
          )}
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