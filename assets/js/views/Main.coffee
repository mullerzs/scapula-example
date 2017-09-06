define (require) ->
  _BaseViews = require '_BaseViews'

  class MainView extends _BaseViews.ParentView
    template: require 'raw!../../templates/main.html'

    afterRender: =>
      @$('.nt-main-content').html 'DONE'
