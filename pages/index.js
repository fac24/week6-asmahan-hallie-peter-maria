import Head from "next/head";
import Image from "next/image";
import styles from "../styles/Home.module.css";
import {getCategories} from '../database/model.js'

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
    </div>
  );
}
