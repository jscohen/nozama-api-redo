'use strict'

require('dotenv').load()
const stripe = require('stripe')(process.env.STRIPE_SECRET_KEY)
const chargePromise = function (paymentObject, token) {
  return new Promise((resolve, reject) => {
    stripe.charges.create({
      amount: paymentObject.amount,
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

const createCharge = function (payment, token) {
  chargePromise(payment, token)
    .then(console.log)
    .catch(console.error)
}

module.exports = createCharge
