import * as React from 'react'
import Link from 'next/link'
import Layout from '../components/Layout'
import { NextPage } from 'next'
import { testFetch } from '../utils/sample-api'

type User = {
  id: number
  name: string
}

const IndexPage: NextPage<User> = ({id, name}) => (
    <Layout title="Home | Next.js + TypeScript Example">
      <h1>Hello Next.js 👋</h1>
      <p>
        <Link href="/about">
          <a>About</a>
        </Link>
      </p>
      <p>{id}</p>
      <p>{name}</p>
    </Layout>
);

IndexPage.getInitialProps = async() => {
  let res = await testFetch()
  console.log(res[0])
  return res[0]
}

export default IndexPage
