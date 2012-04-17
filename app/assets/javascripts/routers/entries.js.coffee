class Btob.Routers.Entries extends Backbone.Router
  routes:
    '': 'index'
    'entries/:id': 'show'

  initialize: ->
    @collection = new Btob.Collections.Entries()
    @collection.fetch()
    @new_collection = new Btob.Collections.Entries()
    @new_collection.on('reset', @repopuplate, this)
    window.setInterval(@refreshFromServer, 2000);
    window.onfocus = @stopBlink
  index: ->
    view = new Btob.Views.EntriesIndex(collection: @collection)
    $('#container').html(view.render().el)

  show: (id) ->
    alert "Entry #{id}"

  refreshFromServer: =>
    @new_collection.url = 'entries/latest?id='+@collection.last().get('id')
    @new_collection.fetch()
    
  repopuplate: ->
    if @new_collection.length > 0
      @collection.add(@new_collection.models)
      blinkTitle('You have a new Message','iTach')

  stopBlink: ->
    stopBlinkTitle()