class Btob.Views.Entry extends Backbone.View

  template: JST['entries/entry']
  tagName: 'p'
  className: 'bubbledLeft'

  render: ->
  	$(@el).html(@template(entry: @model))
  	this
