'use strict'

const database = require('config/database')
const mongoose = require('mongoose')
const uri = process.env.MONGODB_URI || database.mongoose.uri || 'mongodb://immense-springs-27677.herokuapp.com/nozama-api-development'
mongoose.Promise = global.Promise
mongoose.connect(uri)

module.exports = mongoose
