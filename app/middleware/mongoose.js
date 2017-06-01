'use strict'

const database = require('../../config/database')
const mongoose = require('mongoose')
const uri = process.env.MONGODB_URI || database.mongoose.uri || 'mongodb://nozama-api-redo.herokuapp.com/nozama-api-development'
mongoose.Promise = global.Promise
mongoose.connect(uri)

console.log(database.mongoose.uri)

module.exports = mongoose
