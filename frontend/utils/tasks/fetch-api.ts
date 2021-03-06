import fetch from 'isomorphic-unfetch'

export const sampleFetchWrapper = async (
  input: RequestInfo,
  init?: RequestInit
) => {
  try {
    const data = await fetch(input, init).then(res => res.json())
    return data
  } catch (err) {
    throw new Error(err.message)
  }
}

export const testFetch = async () => {
  try {
    const res = await fetch('http://rocket:8000/api/v1')
    const json = await res.json()
    return json
  } catch (err) {
    throw new Error(err)
  }
}