'use strict'

const mongoose = require('mongoose')

const orderSchema = new mongoose.Schema({
  shippingAddress: {
    recipientName: {
      type: String,
      required: true
    },
    address: {
      type: String,
      required: true
    },
    state: {
      type: String,
      required: true
    },
    country: {
      type: String,
      required: true
    },
    zip: {
      type: Number,
      required: true
    }
  },
  paymentDetails: {
    cardType: {
      type: String,
      required: true
    },
    transID: {
      type: Number,
      required: true
    },
    totalPrice: {
      type: Number,
      required: true
    }
  },
  products: [{
    sku: {
      type: Number,
      required: true
    },
    quantity: {
      type: Number,
      required: true
    },
    name: {
      type: String,
      required: true
    },
    price: {
      type: Number,
      required: true
    }
  }],
  _owner: {
    type: mongoose.Schema.Types.ObjectId,
    ref: 'User',
    required: true
  }
}, {
  timestamps: true,
  toJSON: {
    virtuals: true,
    transform: function (doc, ret, options) {
      const userId = (options.user && options.user._id) || false
      ret.editable = userId && userId.equals(doc._owner)
      return ret
    }
  }
})


const Order = mongoose.model('Order', orderSchema)

module.exports = Order
