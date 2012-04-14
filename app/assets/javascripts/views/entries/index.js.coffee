class Btob.Views.EntriesIndex extends Backbone.View

  template: JST['entries/index']

  events:
    'submit #new_entry': 'createEntry'

  initialize: ->
    @collection.on('reset', @render, this)
    @collection.on('add', @render, this)

  render: ->
  	$(@el).html(@template(entries: @collection))
  	this

  createEntry: (event) ->
    event.preventDefault()
    @collection.create message: $('#new_entry_message').val()
    $('#new_entry')[0].reset()
    $('#new_entry_message').focus()
