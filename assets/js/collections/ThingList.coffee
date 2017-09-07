define (require) ->
  _BaseCollections = require '_BaseCollections'
  Thing = require 'models/Thing'

  class ThingList extends _BaseCollections.Collection
    model: Thing
