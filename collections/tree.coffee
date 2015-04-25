

Meteor.startup ->
  if Meteor.isServer and Trees.find().count() == 0
    Trees.insert count: 0
  if Meteor.isServer and Roads.find().count() == 0
    Roads.insert currentRoad: "home"
  if Meteor.isServer
    Roads.update({}, {currentRoad: "home"})



# Meteor.methods
#   changeRoute = ->
#     Fiber(->
#       currentRoad = Roads.findOne().currentRoad
#       console.log currentRoad
#       # Roads.update({}, {$inc: {count: +1}});
#       # console.log("up");
#       return
#     ).run()
#     # Meteor.call 'changeRoute', betId, clearBetCallback
#     return

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