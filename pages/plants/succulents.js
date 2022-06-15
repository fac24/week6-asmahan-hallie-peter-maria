import Link from 'next/link';

export default function Succulents() {
  return (
    <>
      <h1>Choose you succulent</h1>
      <h2>
        <Link href="/">
          <a>Back to home</a>
        </Link>
      </h2>
    </>
  );
}