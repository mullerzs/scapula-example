define (require) ->
  _BaseViews = require '_BaseViews'
  tpl = require 'raw!../../templates/thing_list.html'

  ThingView = require 'views/Thing'

  class ThingListView extends _BaseViews.CollectionView
    className: 'nt-thing-list'

    template: tpl

    ItemView: ThingView

    itemCont: '.nt-thing-list-cont'
