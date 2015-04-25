var Fiber = Npm.require('fibers');

var serialPort = new SerialPort.SerialPort("/dev/ttyACM0", {
        baudrate: 9600,
        parser: SerialPort.parsers.readline('\r\n')
    });
  serialPort.on('open', function() {
      console.log('Port open');
  });
  serialPort.on('data', function(data) {
    console.log(data);
    switch(data) {
      case "1":
        console.log("click btn");
        changeRoute();
        break;
      default:
        console.log("def");
      // upTree();
    }

  });


function upTree() {
  Fiber(function() {
    Trees.update({}, {$inc: {count: +1}});
    console.log("up");
  }).run();
}

function changeRoute() {
  Fiber(function() {
    var currentRoad = Roads.findOne().currentRoad
    console.log(currentRoad);
    switch(currentRoad) {
      // case "home":
      //   console.log("go explanation");
      //   Roads.update({}, {currentRoad: "explanation"});
      //   break;
      // case "explanation":
      //   console.log("go game");
      //   Roads.update({}, {currentRoad: "game"});
      //   break;
      case "home":
        console.log("go game");
        Roads.update({}, {currentRoad: "game"});
        break;
      default:
        console.log("def raod");

    }

  }).run();
}