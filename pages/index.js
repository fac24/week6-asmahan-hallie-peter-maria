import Head from 'next/head'
import Image from 'next/image'
import styles from '../styles/Home.module.css'
import { getCategories } from "../database/model";


export default function Home() {
  let categories = getCategories();
  
  return (
  
<h1>Little Garden</h1>
  
  )
}
