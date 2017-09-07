define (require) ->
  _BaseViews = require '_BaseViews'
  tpl = require 'raw!../../templates/thing.html'

  class ThingView extends _BaseViews.View
    className: 'nt-thing'

    template: tpl

    initDomEvents: =>
      super
      @addDomEvent
        'click .nt-btn-del' : =>
          # @model.destroy()
          @model.collection.remove @model
