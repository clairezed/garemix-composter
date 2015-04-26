Template.home.rendered = ->
  #Carousel
  $('.carousel').carousel({
    interval: 10000
  })

  # Arduino click
  currentRoad = Roads.find()
  observer = currentRoad.observeChanges
    changed: (id, fields) ->
      console.log("client road to");
      console.log fields
      observer.stop() if fields.currentRoad is "explanation"
      Router.go(fields.currentRoad) if fields.currentRoad is "explanation"