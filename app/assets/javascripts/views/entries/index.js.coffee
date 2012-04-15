class Btob.Views.EntriesIndex extends Backbone.View

  template: JST['entries/index']

  events:
    'submit #new_entry': 'createEntry'

  initialize: ->
    @collection.on('reset', @render, this)
    @collection.on('add', @appendEntry, this)

  render: ->
    $(@el).html(@template())
    @collection.each(@appendEntry)
    this

  appendEntry: (entry) ->
    view = new Btob.Views.Entry(model: entry)
    $('#entries').prepend(view.render().el)

  createEntry: (event) ->
    event.preventDefault()
    @collection.create message: $('#new_entry_message').val()
    $('#new_entry')[0].reset()