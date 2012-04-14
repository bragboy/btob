class Btob.Routers.Entries extends Backbone.Router
  routes:
    '': 'index'
    'entries/:id': 'show'

  initialize: ->
    @collection = new Btob.Collections.Entries()
    @collection.fetch()
    window.setInterval(@refreshFromServer, 2000);

  index: ->
    view = new Btob.Views.EntriesIndex(collection: @collection)
    $('#container').html(view.render().el)

  show: (id) ->
    alert "Entry #{id}"

  refreshFromServer: =>
    @collection.fetch()

  

