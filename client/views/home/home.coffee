# Template.home.helpers
#   tree: () ->
#     return Trees.findOne()



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
      Router.go(fields.currentRoad);