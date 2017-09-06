define (require) ->
  _BaseViews = require '_BaseViews'

  class MainView extends _BaseViews.ParentView
    afterRender: =>
      @$el.html 'DONE'
