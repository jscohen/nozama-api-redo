'use strict'

const mongoose = require('mongoose')

const productSchema = new mongoose.Schema({
  name: {
    type: String,
    required: true
  },
  inventory: {
    type: Number
  },
  price: {
    type: Number,
    required: true
  },
  description: {
    type: String,
    required: true
  },
  sku: {
    type: String,
    required: true
  },
  image: {
    type: String
  },
  brand: {
    type: String,
    required: true
  },
  category: {
    type: String,
    required: true
  },
  subCategory: {
    type: String
  }
}, {
  timestamps: true,
  toJSON: {
    virtuals: true,
    transform: function (doc, ret, options) {
      return ret
    }
  }
})
const Product = mongoose.model('Product', productSchema)

module.exports = Product
