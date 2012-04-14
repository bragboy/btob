window.Btob =
  Models: {}
  Collections: {}
  Views: {}
  Routers: {}
  init: -> 
    new Btob.Routers.Entries()
    Backbone.history.start()

$(document).ready ->
  Btob.init()
