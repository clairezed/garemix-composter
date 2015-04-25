
Meteor.methods
  randomResult: (cityName) ->
    console.log "random result : #{cityName}"
    currentCity = Cities.findOne({name: cityName})
    console.log currentCity
    randomNumber = Math.floor(Math.random() * 5) + 1
    result = if randomNumber is 1 then 'win' else 'loose'
    return {
      result: result,
      cityId: currentCity._id
    }

