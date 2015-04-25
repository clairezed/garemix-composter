// Roads = new (Mongo.Collection)('roads');

// var count = 0;
// var query = Roads.find();
// var handle = query.observeChanges({
//   // added: function (id, user) {
//   //   count++;
//   //   console.log(user.name + " brings the total to " + count + " admins.");
//   // },
//   // removed: function () {
//   //   count--;
//   //   console.log("Lost one. We're now down to " + count + " admins.");
//   // },
//   changed: function(id, fields) {
//     console.log(fields);
//     if (Meteor.isClient) {
//       console.log("client road to");
//       Router.go(fields.currentRoad);
//     } else {
//       console.log("changed server side");
//     }
//   }
// });

// After five seconds, stop keeping the count.
// setTimeout(function () {handle.stop();}, 5000);