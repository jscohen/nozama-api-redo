'use strict'

const controller = require('lib/wiring/controller')
const models = require('app/models')
const Address = models.address

const authenticate = require('./concerns/authenticate')
const setUser = require('./concerns/set-current-user')
const setModel = require('./concerns/set-mongoose-model')

const show = (req, res) => {
  console.log(req.user.id)
  console.log(req.address._owner)
  const userId = req.user.id.toString()
  const addressOwner = req.address._owner.toString()
  if (userId !== addressOwner) {
    console.log('its not equal')
    res.sendStatus(204)
    return false
  }

  res.json({
    address: req.address.toJSON({ user: req.user })
  })
}

const create = (req, res, next) => {
  const address = Object.assign(req.body.address, {
    _owner: req.user._id
  })
  Address.create(address)
    .then(address =>
      res.status(201)
        .json({
          address: address.toJSON({ user: req.user })
        }))
    .catch(next)
}

module.exports = controller({
  show,
  create
  // update,
  // destroy
}, { before: [
  { method: setUser, only: ['index', 'show'] },
  {method: authenticate},
  { method: setModel(Address), only: ['show'] },
  { method: setModel(Address, { forUser: true }), only: ['update', 'destroy'] }
] })
