define (require) ->
  _ = require 'underscore'
  Backbone = require 'backbone'

  baseviews = require '_BaseViews'
  Router = require 'Router'
  routes = require 'routes'
  vent = require 'vent'

  # expose jquery global for dev
  window.$ = require 'jquery'

  require 'restsync'
  require 'jquerynt'
  require 'hbshelpers'

  app =
    router: new Router
      viewRoutes: routes

    viewLoad: (view, opts = {}) ->
      ViewClass = require 'views/' + view
      app.view.close() if app.view
      app.view = new ViewClass _.extend
        el  : '#container'
        app : app
      , opts

      app.view.render()

      if !app.view.navigate
        url = opts.route || app.view.route?() || view.toLowerCase()
        Backbone.history.navigate "/#{url}"

  Backbone.history.start
    pushState : true
    root      : '/'
    silent    : true

  vent.on 'view:load', app.viewLoad

  route = 'main' # start page

  app.router.callRoute route
