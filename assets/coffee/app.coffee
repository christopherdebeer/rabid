# Global styles 
require( '../scss/style.scss' )

# Require front end stalwarts ( jQuery, underscore and an MV*  )
jQuery = window.$ = $ = require('jquery')
_ = require('underscore')
window.Backbone = Backbone = require('backbone')
Backbone.LocalStorage = require("backbone.localstorage");
Backbone.$ = $

# Your app goes here

class App
  render: ->
    console.log "app init"


# Shorthand on document Ready initialization
jQuery ->
  app = new App()
  app.render()

