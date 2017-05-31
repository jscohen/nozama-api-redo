'use strict'

const controller = require('lib/wiring/controller')
const models = require('app/models')
const Cart = models.cart

const authenticate = require('./concerns/authenticate')
const setUser = require('./concerns/set-current-user')
const setModel = require('./concerns/set-mongoose-model')
const lodash = require('lodash')

const index = (req, res, next) => {
  Cart.find()
    .then(carts => res.json({
      carts: carts.map((e) =>
        e.toJSON({ user: req.user }))
    }))
    .catch(next)
}

const show = (req, res) => {
  res.json({
    cart: req.cart.toJSON({ user: req.user })
  })
}

const create = (req, res, next) => {
  const cart = Object.assign(req.body.cart, {
    _owner: req.user._id
  })
  Cart.create(cart)
    .then(cart =>
      res.status(201)
        .json({
          cart: cart.toJSON({ user: req.user })
        }))
    .catch(next)
}

const update = (req, res, next) => {
  delete req.body._owner  // disallow owner reassignment.

  // for (let i = 0; i < req.cart.products.length; i++) {
  //   if (lodash.isEqual(req.cart.products[i].sku, req.body.cart.products[0].sku) && req.headers.action === 'add') {
  //     res.sendStatus(404)
  //     return
  //   }
  // }
  if (req.headers.action === 'add') {
    req.cart.update({'$push': {products: req.body.cart.products[0]}, '$set': {'totalPrice': req.body.cart.totalPrice}})
      .then((carts) => res.sendStatus(201))
      .catch(next)
  } else if (req.headers.action === 'remove') {
    req.cart.update({'$pull': {products: req.body.cart.products[0]}, '$set': {'totalPrice': req.body.cart.totalPrice}})
      .then((carts) => res.sendStatus(204))
      .catch(next)
  } else if (req.headers.action === 'changeQuantity') {
    // const sku = (req.body.cart.products[0].sku)
    // console.log(req.body.cart.products[0])
    // console.log(req.cart)
    console.log(req.body.cart)
    req.cart.update({'$pull': {products: {sku: req.body.cart.products[0].sku}}})
    .then(req.cart.update({'$push': {products: req.body.cart.products[0]}}))
    .then(res.status(201)
            .json({
              cart: req.cart.toJSON({ user: req.user })
            }))
    .catch(next)
    console.log(req.cart)
  }
}
const destroy = (req, res, next) => {
  req.cart.remove()
    .then(() => res.sendStatus(204))
    .catch(next)
}

module.exports = controller({
  index,
  show,
  create,
  update,
  destroy
}, { before: [
  { method: setUser, only: ['index', 'show'] },
  { method: authenticate},
  { method: setModel(Cart), only: ['show'] },
  { method: setModel(Cart, { forUser: true }), only: ['update', 'destroy'] }
] })
