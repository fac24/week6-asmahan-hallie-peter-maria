import Link from 'next/link';

export default function Vegetables() {
  return (
    <>
      <h1>Choose you vegetables</h1>
      <h2>
        <Link href="/">
          <a>Back to home</a>
        </Link>
      </h2>
    </>
  );
}