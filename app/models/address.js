'use strict'

// const bcrypt = require('bcrypt')
const mongoose = require('mongoose')
// const uniqueValidator = require('mongoose-unique-validator')

const addressSchema = new mongoose.Schema({
  _owner: {
    type: mongoose.Schema.Types.ObjectId,
    ref: 'User',
    required: true
  },
  street: {
    type: String
  },
  city: {
    type: String
  },
  state: {
    type: String
  },
  zip: {
    type: String
  },
  country: {
    type: String
  }
})

const Address = mongoose.model('Address', addressSchema)

module.exports = Address
