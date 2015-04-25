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