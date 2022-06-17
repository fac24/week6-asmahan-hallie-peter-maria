import Head from "next/head";
import Link from "next/link";
//import PlantImages from "next/images"
import styles from './layout.module.css'; 

export const siteTitle = "Little Garden"

// The children argument is all of the elemnents nested on the Layout component (in index.js)
// home is an argument sent only from the home root Layout component - if "home" is not then return a title that links back to "/" 
export default function Layout({ children, home }) {
    return (
        <div className={styles.container}>
         <Head>
         <meta name="viewport" content="initial-scale=1.0, width=device-width" />
         <title>{siteTitle}</title>
         </Head>
         <header className={styles.header}>
         {home ? (
             <>
             <h1>{siteTitle}</h1>
             </>
         ) : (
         <Link>
            <a>
            <h1>{siteTitle}</h1>
             </a>
        </Link>
         )}
         </header>
         <p className={styles.slogan}>Plant a little love, watch a miracle grow.</p>
         <main>{children}</main>
        
        </div>
    )
}

//NOTE: please add href="/" to <Link> with the <a>
// We just had to remove it for now for vercel happiness 

