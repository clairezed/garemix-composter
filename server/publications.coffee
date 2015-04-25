Meteor.publish 'tree', () ->
  Trees.find { }, {limit: 1}

Meteor.publish 'road', () ->
  Roads.find { }, {limit: 1}

Meteor.publish 'city', (id) ->
  Roads.find {_id: id }