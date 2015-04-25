citiesArray = [
  {
    name: "CIVRIEUX D AZERGUES",
    time: 33,
    picture: "/civrieux.jpg",
    interest: "Le jardin de Nous-Deux",
    sentence: "Qui du train ou du tram est arrivé en premier ?"
  },
   {
    name: "L ARBRESLE",
    time: 33,
    picture: "/civrieux.jpg",
    interest: "Le jardin de Nous-Deux",
    sentence: "Qui du train ou du tram est arrivé en premier ?"
  },
  {
    name: "CASINO LA CROIX LAVAL",
    time: 33,
    picture: "/civrieux.jpg",
    interest: "Le jardin de Nous-Deux",
    sentence: "Qui du train ou du tram est arrivé en premier ?"
  },
  {
    name: "CHAPONOST",
    time: 33,
    picture: "/civrieux.jpg",
    interest: "Le jardin de Nous-Deux",
    sentence: "Qui du train ou du tram est arrivé en premier ?"
  },
  {
    name: "BRIGNAIS",
    time: 33,
    picture: "/civrieux.jpg",
    interest: "Le jardin de Nous-Deux",
    sentence: "Qui du train ou du tram est arrivé en premier ?"
  },
  {
    name: "CHARBONNIERE",
    time: 33,
    picture: "/civrieux.jpg",
    interest: "Le jardin de Nous-Deux",
    sentence: "Qui du train ou du tram est arrivé en premier ?"
  }

]


# seeds ====================================================================
Meteor.startup ->
  if Meteor.isServer and Trees.find().count() == 0
    Trees.insert count: 0
  if Meteor.isServer and Roads.find().count() == 0
    Roads.insert currentRoad: "home"
  if Meteor.isServer
    Roads.update({}, {currentRoad: "home"})
  if Meteor.isServer and Cities.find().count() == 0
    for city in citiesArray
      do ->
        console.log city
        Cities.insert name: city.name, time: city.time, picture: city.picture, interest: city.interest, sentence: city.sentence

Meteor.methods
  randomResult: (cityName) ->
    console.log "random result : #{cityName}"
    # console.log(Cities.find())
    # console.log cityName.trim() is "CASINO LA CROIX LAVAL"
    currentCity = Cities.findOne({name: cityName})
    console.log currentCity
    randomNumber = Math.floor(Math.random() * 5) + 1
    result = if randomNumber is 1 then 'win' else 'loose'
    return {
      result: result,
      cityId: currentCity._id
    }


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