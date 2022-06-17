import Head from "next/head";
import Link from "next/link";
import Image from "next/image";
import styles from './layout.module.css';

export default function Search(findPlant){
    return (
        <div > 
          <label htmlFor="search">
{/* span here is for accessibility purposes*/}
            <span className={styles.visually_hidden}>Search by plant:</span>
          </label>
          <input
            className={styles.search}
            placeholder = "search by plant"
            // onChange={(event) => findPlant(event.target.value)}
            type='text'
          />
        </div>

    );
}