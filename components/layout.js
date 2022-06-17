import Head from "next/head";
import Link from "next/link";
import Image from "next/image";
import styles from './layout.module.css'; 
import Search from "./search.js"
export const siteTitle = "Little Garden"

// The children argument is all of the elemnents nested on the Layout component (in index.js)
// home is an argument sent only from the home root Layout component - if "home" is not then return a title that links back to "/" 
export default function Layout({ children, home }) {
    return (
        <>
        <Head>
         <meta name="viewport" content="initial-scale=1.0, width=device-width" />
         <title>{siteTitle}</title>
         </Head>

            <div className={styles.container}>
            <Image
            className={styles.container}
            src="/Little-Garden.png"
            height={350}
            width={350}
            alt="logo"
             />
            <header className={styles.header}>
             {home ? (
             <>
             <h1>{siteTitle}</h1>
             </>
         ) : (
         <Link href="/" >
            <a>
            <h1 className={styles.pageHeader}>{siteTitle}</h1>
             </a>
        </Link>
         )}
         </header>
         <p className={styles.slogan}>Plant a little love, watch a miracle grow.</p>
         <Search/>
         <main>{children}</main>
        </div>
        </>
    )
}

