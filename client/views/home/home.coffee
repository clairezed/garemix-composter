Template.home.rendered = ->
  $('.owl-carousel').owlCarousel(
    singleItem:true
    )
  params = Router.current().params
  currentRoad = Roads.find()

  observer = currentRoad.observeChanges
    changed: (id, fields) ->
      console.log("client road to");
      console.log fields
      observer.stop() if fields.currentRoad is "explanation"
      Router.go(fields.currentRoad)