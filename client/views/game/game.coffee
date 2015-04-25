Template.game.helpers
  tree: () ->
    return Trees.findOne()
  cities: () ->
    Cities.find()
  randomCity: () ->
    randomFromCollection(Cities)


Template.game.events
  'click [data-action=launch]': (event, template) ->
    tree = Trees.findOne()
    console.log tree._id
    Trees.update({_id: tree._id}, {$inc: {count: +1}})


Template.game.rendered = ->
  # Launch flip
  $('.flip').ticker()

  # Auto flip
  interval = setInterval ()->
    $('.flip').trigger('click');
  ,2000

  #Sound
  soundElement = document.getElementById('sound')
  soundElement.play()
  soundElement.addEventListener 'ended', (->
    console.log "end sound"
    @currentTime = 0
    @play()
    return
  ), false

  # params = Router.current().params
  tree = Trees.find()

  observer = tree.observeChanges
    changed: (id, fields) ->
      console.log "tree change !"

      clearTimeout(interval)
      # cityId = $("[data-city]").data('city')
      # console.log cityId
      cityName = $("[data-cityname]").data('cityname').trim()

      randomResultCallback = (error, data) ->
        setTimeout (->
          console.log "Callback result"
          if error
            console.log error
          else
            console.log(data.result)
            Router.go(data.result, {_id: data.cityId})
          return
        ), 1500

      Meteor.call 'randomResult', cityName, randomResultCallback




randomInRange = (min, max) ->
  random = Math.floor(Math.random() * (max - min + 1)) + min
  random

randomFromCollection = (C) ->
  c = C.find().fetch()
  i = randomInRange(0, c.length)
  c[i]