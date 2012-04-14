class Btob.Views.EntriesIndex extends Backbone.View

  template: JST['entries/index']

  render: ->
  	$(@el).html(@template(entries: "Entries go here"))
  	this
