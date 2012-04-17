class Btob.Views.Entry extends Backbone.View

  template: JST['entries/entry']

  render: ->
  	$(@el).html(@template(entry: @model))
  	this
