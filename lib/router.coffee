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

Router.route "/win/:_id",
  controller: 'ApplicationController'
  name: "win"
  template: "win"
  waitOn: ->
    Meteor.subscribe 'city', @params._id
  data: ->
    Cities.findOne _id: @params._id

Router.route "/loose/:_id",
  controller: 'ApplicationController'
  name: "loose"
  template: "loose"
  waitOn: ->
    Meteor.subscribe 'city', @params._id
  data: ->
    Cities.findOne _id: @params._id


class @ApplicationController extends RouteController
  # layoutTemplate: "layout"