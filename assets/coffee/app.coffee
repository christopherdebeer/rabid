# Global styles 
require( '../scss/style.scss' )

# Require front end stalwarts ( jQuery, underscore and an MV*  )
jQuery = window.$ = $ = require('jquery')
_ = require('underscore')
window.Backbone = Backbone = require('backbone')
Backbone.LocalStorage = require("backbone.localstorage");
Backbone.$ = $

# Your app goes here

class ExampleView extends Backbone.View
  className: 'rapid-example'
  template: """
    <img src="assets/images/icon.png" alt="Rapid" />
    <h1>Rapid Prototyping</h1>
    <p>source: <a href="https://github.com/christopherdebeer/rabid">https://github.com/christopherdebeer/rabid</a></p>
  """
  render: ->
    super
    @$el.html( _.template( @template, @model?.attributes ) )
    this


# Shorthand on document Ready initialization
jQuery ->
  console.log "RAPID Prototyping"
  appView = new ExampleView()
  jQuery('body').append appView.render().$el

