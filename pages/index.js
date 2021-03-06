import Head from "next/head";
import Link from "next/link";
import { getCategories } from "../database/model.js";
import Image from "next/image";
import styles from "../styles/Home.module.css";
import Layout, {siteTitle} from "../components/layout";

export async function getServerSideProps() {
  const categories = await getCategories();
  return {
    props: {
      categories,
    },
  };
}



export default function Home({ categories }) {
  return (
    <Layout home >
        <div>
      <section className={styles.categories}>
        <ul>
          {categories.length ? (
            categories.map((category) => (
              <Link href={`/categories/${category.id}`} key={category.id}>
                <a className={styles.link}>
                  <li>
                    <div>
                      <h2>{category.plant_kind}</h2>
                    </div>
                    <Image
              // className={styles.singleImage}
              src={category.category_img}
              height={200}
              width={250}
              // layout={'responsive'}
              alt={category.plant_kind}
            />
                  </li>
                </a>
              </Link>
            ))
          ) : (
            <li>No results found</li>
          )}
        </ul>
      </section>
    </div>
    </Layout >
  );
}
