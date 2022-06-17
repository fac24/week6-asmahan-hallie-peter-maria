import Link from "next/link";
// import { getBasketProducts } from "../db/model.js";
import { getCategories } from "../database/model.js";
// import Header from "../components/header.jsx";
import Layout, {siteTitle} from "../components/layout";

// export async function getServerSideProps({ req }) {
//   const sid = req.cookies.sid;
//   const products = sid ? await getBasketProducts(sid) : [];
//   return { props: { products } };
// }

// export default function Home({ products }) {
//   return (
//     <>
//       <Header basketCount={products.length} />
//       <div>
//         {!products.length ? (
//           <div>Your basket is empty!</div>
//         ) : (
//           <ul>
//             {products.map((product) => (
//               <li key={product.id}>
//                 <Link href={`/products/${product.id}`}>{product.name}</Link>{" "}
//                 &times; 1
//               </li>
//             ))}
//           </ul>
//         )}
//       </div>
//     </>
//   );
// }