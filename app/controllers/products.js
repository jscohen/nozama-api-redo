'use strict'

const controller = require('lib/wiring/controller')
const models = require('app/models')
const Product = models.product

const authenticate = require('./concerns/authenticate')
const setUser = require('./concerns/set-current-user')
const setModel = require('./concerns/set-mongoose-model')

const index = (req, res, next) => {
  const query = {}

  if (req.header('category')) {
    query.category = req.header('category')
  }

  if (req.header('subcategory')) {
    query.subcategory = req.header('subcategory')
  }
  console.log(query);
  Product.find(query)
    .then(products => res.json({
      products: products.map((e) =>
        e.toJSON({ user: req.user }))
    }))
    .catch(next)
}

const show = (req, res) => {
  res.json({
    product: req.product.toJSON({ user: req.user })
  })
}

// const create = (req, res, next) => {
//   const product = Object.assign(req.body.product, {
//     _owner: req.user._id
//   })
//   Product.create(product)
//     .then(product =>
//       res.status(201)
//         .json({
//           product: product.toJSON({ user: req.user })
//         }))
//     .catch(next)
// }

module.exports = controller({
  index,
  show
}, { before: [
  { method: setModel(Product), only: ['show'] }
] })
