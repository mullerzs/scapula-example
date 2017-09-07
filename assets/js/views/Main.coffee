define (require) ->
  _BaseViews = require '_BaseViews'

  ThingList = require 'collections/ThingList'
  ThingListView = require 'views/ThingList'

  class MainView extends _BaseViews.ParentView
    template: require 'raw!../../templates/main.html'

    afterRender: =>
      thingList = new ThingList [
        name: 'Thing A'
        value: 1
      ,
        name: 'Thing B'
        value: 2
      ]

      thingListView = @createChild ThingListView,
        collection: thingList
      , 'thingList'

      thingListView.$el.appendTo @$el
