'use strict'

const controller = require('lib/wiring/controller')
const models = require('app/models')
const Order = models.order

const authenticate = require('./concerns/authenticate')
const setUser = require('./concerns/set-current-user')
const setModel = require('./concerns/set-mongoose-model')

const stripe = require('lib/stripe-charge')

const index = (req, res, next) => {
  Order.find({_owner: req.user._id})
    .then(orders => res.json({
      orders: orders.map((e) =>
        e.toJSON({ user: req.user }))
    }))
    .catch(next)
}

const show = (req, res) => {
  res.json({
    order: req.order.toJSON({ user: req.user })
  })
}

const create = (req, res, next) => {
  const paymentToken = req.headers.paymentToken
  const totalPrice = req.body.order.totalPrice
  stripe(totalPrice, paymentToken)
  const order = Object.assign(req.body.order, {
    _owner: req.user._id
  })
  Order.create(order)
    .then(order =>
      res.status(201)
        .json({
          order: order.toJSON({ user: req.user })
        }))
    .catch(next)
}

module.exports = controller({
  index,
  show,
  create
}, { before: [
  { method: setUser, only: ['index', 'show'] },
  { method: authenticate, only: ['create','index', 'show'] },
  { method: setModel(Order), only: ['show'] }
] })
