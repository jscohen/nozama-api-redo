'use strict'

const Cart = require('../cart')
const mongoose = require('mongoose')

mongoose.connect('mongodb://localhost/4741')

let cart = new Cart()
cart.totalPrice = 5
cart.products = [{
  sku: 1,
  quantity: 1,
  name: 'Test',
  price: 5
}]
cart._owner = {
  email: 't'
}

cart.save(function (error, result) {
  return new Promise((resolve, reject) => {
    if (error) {
      reject(error)
    } else {
      resolve(result)
    }
  }).then(console.log)
  .catch(console.error)
})
