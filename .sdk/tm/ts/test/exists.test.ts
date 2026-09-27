
import { test, describe } from 'node:test'
import { equal } from 'node:assert'


import { BluefinTecsUserBackofficeSDK } from '..'


describe('exists', async () => {

  test('test-mode', () => {
    const testsdk = BluefinTecsUserBackofficeSDK.test()
    equal(testsdk instanceof BluefinTecsUserBackofficeSDK, true,
      'BluefinTecsUserBackofficeSDK.test() must return a client synchronously')
  })

})
