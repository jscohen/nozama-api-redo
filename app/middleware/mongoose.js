'use strict'

const database = require('config/database')
const mongoose = require('mongoose')
const uri = process.env.MONGODB_URI || 'mongodb://nozama-api-redo.herokuapp.com/nozama-api-development' || database.mongoose.uri
mongoose.Promise = global.Promise
mongoose.connect(uri)

module.exports = mongoose
