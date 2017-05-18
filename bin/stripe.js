'use strict'

const stripeCharge = require('../lib/stripe-charge.js')

const total = 5000
const token = 'tok_1AKxFbDnZZkIjqFUILztD5E7'

stripeCharge(total, token)
