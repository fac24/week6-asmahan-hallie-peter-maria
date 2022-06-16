import Layout from "../../components/layout";
import Link from "next/link";
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
        <div>hi plant</div>
        {/* <div>
      <section className="plants">
        <ul>
          {categoryData ? (
            categoryData.map((plant) => (
              <Link href={`/plant/${plant.id}`} key={plant.id}>
                <a>
                  <li>
                    <div>
                    <Image
                        //  className={styles.singleImage}
                         src={plant.img_url}
                         height={200}
                         width={250}
                         alt={plant.plant_name}
                    />
                      <h2>{plant.plant_name}</h2>
                      <p>From £{plant.price}</p>
                    </div>
                  </li>
                </a>
              </Link>
            ))
          ) : (
            <li>No results found</li>
          )}
        </ul>
      </section>
    </div> */}
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