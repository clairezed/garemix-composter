Template.game.helpers
  tree: () ->
    return Trees.findOne()
  cities: () ->
    Cities.find()


Template.game.rendered = ->
  $('.flip').ticker()

  interval = setInterval ()->
    $('.flip').trigger('click');
  ,2000
