# changeRoute = ->
#   Fiber(->
#     currentRoad = Roads.findOne().currentRoad
#     console.log currentRoad
#     # Roads.update({}, {$inc: {count: +1}});
#     # console.log("up");
#     return
#   ).run()
#   # Meteor.call 'changeRoute', betId, clearBetCallback
#   return