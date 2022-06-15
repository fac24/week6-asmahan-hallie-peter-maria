import Link from 'next/link';

export default function Garden() {
  return (
    <>
      <h1>Choose you garden plants</h1>
      <h2>
        <Link href="/">
          <a>Back to home</a>
        </Link>
      </h2>
    </>
  );
}