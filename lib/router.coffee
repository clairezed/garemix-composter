Router.route "/",
  controller: 'ApplicationController'
  name: "home"
  template: "home"
  waitOn: ->
    Meteor.subscribe 'tree'
    Meteor.subscribe 'road'

Router.route "/explanation",
  controller: 'ApplicationController'
  name: "explanation"
  template: "explanation"


Router.route "/game",
  controller: 'ApplicationController'
  name: "game"
  template: "game"
  waitOn: ->
    Meteor.subscribe 'tree'


class @ApplicationController extends RouteController
  # layoutTemplate: "layout"