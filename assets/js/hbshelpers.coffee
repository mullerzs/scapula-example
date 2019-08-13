define (require) ->
  Handlebars = require 'handlebars'

  hbshelpers =
    lang: (key, opts) ->
      # TODO: translate key to lang value
      key

  Handlebars.registerHelper name, func for name, func of hbshelpers
