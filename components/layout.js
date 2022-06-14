import Head from "next/head";
//import { useLayoutEffect } from "react/cjs/react.production.min"
//import PlantImages from "next/images"

export const siteTitle = "FLOWER POWER ......"

export default function Layout({ children, home }) {
    return (
        <>
         <Head>
         <link rel="icon" href="/favicon.ico" />
        <meta
          name="description"
          content="eccommerce site for plant shop"
        />
        <meta name="og:title" content={siteTitle} />
         </Head>
         <header>
             <h1>{siteTitle}</h1>
         </header>
        </>
    )
}

