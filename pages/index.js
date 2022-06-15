import Head from "next/head";
import Link from "next/link";
import Image from "next/image";
import styles from "../styles/Home.module.css";
import { getCategories } from "../database/model.js";

export async function getStaticProps() {
  const categories = await getCategories();
  return {
    props: {
      categories,
    },
  };
}

export default function Home({ categories }) {
  console.log(categories);
  return (
    <div>
      <h1>Little Garden</h1>
      <section className="categories">
        <ul>
          {categories.length ? (
            categories.map((category) => (
              <Link href={`/categories/${category.id}`} key={category.id}>
                <a>
                  <li>
                    <div>
                      <h2>{category.plant_kind}</h2>
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
    </div>
  );
}
