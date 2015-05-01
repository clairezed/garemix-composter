## Compost'TER - web part

Compost'TER is a 3-day-built project created during the event Garemix, Lyon, 2015.

It was led by a 5 people team, and here is the web / screen side of the project. This web application communicate with arduino captors and displays screens and information following the data that is sent by the captors.




### How to install the application

1. Install meteor

2. Clone this repository
`$ git clone ....`

3. Plug the arduino cart on a usb port (via usb/serial wire)

4. Check the address of your serial port.
One way to do it is to install arduino, and check in the top menu on which port is the arduino cart sending its signal.

5. Change the address of the serial port in the file `/server/serialPort.js`

### How to launch the application

#### With arduino plugged on serial port

`$ cd composter`
`$ meteor`

If 'Port open' appears in your terminal, everything is working

#### Without arduino plugged on serial port

For debuggning purpose, you may want to launch the app without arduino plugged.

First, you need to comment the whole file `/server/serialPort.js`. Then, do as in the previous part :

`$ cd composter`
`$ meteor`
Open a browser and go to `localhost:3000/`

### In case of bug

#### Arduino is plugged but serial port isn't recognised

- Shut down the application
In your terminal : Ctrl-C
- unplug the arduino
- plug it back
- relaunch the application (`meteor` in the project directory)

#### The program is blocked at the wrong screen

- Shut down the application
In your terminal : Ctrl-C
- Go to the home page in your browser (`localhost:3000/`)
- relaunch the application (`meteor` in the project directory)

The program automatically reboots routing.


### Warning

This application was developped in 2 days by a single person, in order to have a full size (taille réelle) prototype work for only 2 hours. Therefore, it's neither optimized, nor secure or 100% reliable. Please be indulgent with code quality, as well.
