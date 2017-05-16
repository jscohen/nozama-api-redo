'use strict'

// const bcrypt = require('bcrypt')
const mongoose = require('mongoose')
// const uniqueValidator = require('mongoose-unique-validator')

const cartSchema = new mongoose.Schema({
  _owner: {
    type: mongoose.Schema.Types.ObjectId,
    ref: 'User',
    required: true
  },
  totalPrice: {
    type: Number
  },
  addOrDelete: {
    type: Boolean
  },
  products: [{
    sku: {type: String},
    quantity: {type: Number},
    name: {type: String},
    price: {type: Number}
  }]
})
//   products: {
//     type: String,
//     required: true
//   },
//   passwordDigest: String
// }, {
//   timestamps: true,
//   toJSON: {
//     virtuals: true,
//     transform: function (doc, pojoCart) {
//       // remove sensitive data from every cart document
//       delete pojoCart.token
//       delete pojoCart.passwordDigest
//       return pojoCart
//     }
//   },
//
// cartSchema.virtuals('products').set(function ())

// cartSchema.plugin(uniqueValidator)
//
// cartSchema.methods.comparePassword = function (password) {
//   const _this = this
//
//   return new Promise((resolve, reject) =>
//     bcrypt.compare(password, _this.passwordDigest, (err, data) =>
//         err ? reject(err) : data ? resolve(data) : reject(new Error('Not Authorized')))
//     ).then(() => _this)
// }
//
// cartSchema.virtual('password').set(function (password) {
//   this._password = password
// })

// cartSchema.pre('save', function (next) {
//   const _this = this
//
//   if (!_this._password) {
//     return next()
//   }
//
//   new Promise((resolve, reject) =>
//     bcrypt.genSalt(null, (err, salt) =>
//         err ? reject(err) : resolve(salt))
//   ).then((salt) =>
//     new Promise((resolve, reject) =>
//       bcrypt.hash(_this._password, salt, (err, data) =>
//         err ? reject(err) : resolve(data)))
//   ).then((digest) => {
//     _this.passwordDigest = digest
//     next()
//   }).catch((error) => {
//     next(error)
//   })
// })
//
// cartSchema.methods.setPassword = function (password) {
//   const _this = this
//
//   return new Promise((resolve, reject) =>
//     bcrypt.genSalt(null, (err, salt) =>
//         err ? reject(err) : resolve(salt))
//   ).then((salt) =>
//     new Promise((resolve, reject) =>
//       bcrypt.hash(password, salt, (err, data) =>
//         err ? reject(err) : resolve(data)))
//   ).then((digest) => {
//     _this.passwordDigest = digest
//     return _this.save()
//   })
// }

const Cart = mongoose.model('Cart', cartSchema)

module.exports = Cart
