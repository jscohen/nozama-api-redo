'use strict'

require('dotenv').load()
const stripe = require('stripe')(process.env.STRIPE_SECRET_KEY)
const chargePromise = function (paymentTotal, token) {
  return new Promise((resolve, reject) => {
    stripe.charges.create({
      amount: paymentTotal.amount,
      currency: 'usd',
      description: 'Example charge',
      source: token
    }, function (error, charge) {
      if (error) {
        reject(error)
      }
      resolve(charge)
    })
  })
}

const createCharge = function (total, token) {
  chargePromise(total, token)
    .then(console.log)
    .catch(console.error)
}

module.exports = createCharge
