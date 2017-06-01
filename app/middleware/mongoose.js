'use strict'

const database = require('../../config/database')
const mongoose = require('mongoose')

let uri = ''

if (database.mongoose.uri === undefined) {
  uri = 'mongodb://nozama-api-redo.herokuapp.com/nozama-api-development'
} else {
  uri = process.env.MONGODB_URI || database.mongoose.uri
}

mongoose.Promise = global.Promise
mongoose.connect(uri)

module.exports = mongoose
