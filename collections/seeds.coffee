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
    picture: "/arbresle.jpg",
    interest: "Le couvent Ste-Marie de la Tourette",
    sentence: "Ya des voies ferroviaires sous Fourvière"
  },
  {
    name: "CASINO LA CROIX LAVAL",
    time: 17,
    picture: "/casino-lacroix.jpg",
    interest: "Le Casino du Lyon Vert",
    sentence: "Le contrôleur porte des chaussettes à paillettes"
  },
  {
    name: "CHAPONOST",
    time: 20,
    picture: "/chaponost.jpg",
    interest: "La rampe de l'aqueduc du Gier",
    sentence: "J'ai déraillé mon Vélo'v"
  },
  {
    name: "BRIGNAIS",
    time: 25,
    picture: "/brignais.jpg",
    interest: " La vieille ville de Brignais",
    sentence: "L'Ouest-Lyonnais c'est pas trou paumais"
  },
  {
    name: "CHARBONNIERE",
    time: 17,
    picture: "/charbonniere.jpg",
    interest: "Le parc de la Bressonnière",
    sentence: "Ma carte Ou'RA sent le vin"
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