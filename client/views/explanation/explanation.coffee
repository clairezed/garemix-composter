Template.explanation.rendered = ->
  # params = Router.current().params
  currentRoad = Roads.find()

  observer = currentRoad.observeChanges
    changed: (id, fields) ->
      console.log("client road to");
      console.log fields
      observer.stop()
      Router.go(fields.currentRoad);