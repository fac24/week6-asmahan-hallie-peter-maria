import Layout from "../../components/layout";
import Head from "next/head";
// getting categories of plants
import { getCategoryPlants } from "../database/model.js";

export async function getStaticProps({ params }) {
  const categoryData = await getCategoryPlants(params.id);
  return {
    props: {
      categoryData,
    },
  };
}
