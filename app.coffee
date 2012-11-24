# Require Node Dependencies

express = require 'express'
stylus  = require 'stylus'
nib     = require 'nib'
assets  = require 'connect-assets'
routes  = require './routes'

# Configure Express App

app = express()

app.configure ->
  app.set 'name', 'Landmate'
  app.set 'port', process.env.PORT || 5000
  app.set 'views', __dirname + '/views'
  app.set 'view engine', 'jade'
  app.use express.bodyParser()
  app.use assets()
  app.use express.methodOverride()
  app.use app.router
  app.use express.static __dirname + '/public'

app.configure 'development', () ->
  app.use express.errorHandler dumpExceptions: true, showStack: true

app.configure 'production', () ->
  app.use express.errorHandler()

# Declare Express Routing & Listen

app.get '/', routes.index

app.listen app.settings.port, () ->
  console.log("#{app.get 'name'} listening on port #{app.get 'port'} in #{app.settings.env} mode")
