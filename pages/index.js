import Head from "next/head";
//import Image from "next/image";
//import styles from "../styles/Home.module.css";
import {getCategories} from '../database/model.js';
import Layout, {siteTitle} from "../components/layout";

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
    <Layout home >
      <Head>
        <title>
            {siteTitle}
        </title>
        <div>
      <p>Hello Flowers</p>
    </div>
      </Head>
   
    </Layout >
  );
}
