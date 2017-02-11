/*var x = 5;

function two (x) {
  console.log(x);
}

function three () {
  console.log(x);
}

function five () {
  var y = 5;
  console.log(y);
}

console.log(five());
console.log(y);


*/

// closure

function testClosure() {
  var x = 4;
  function closeX() {
    return x;
  }
  return closeX;
}
var nuevaFuncion = testClosure();
//console.log(nuevaFuncion);
//console.log(nuevaFuncion());

/*function ticketBuilder(transport) {

  var cont = 0;
  return function(name) {
    cont++;
    console.log("Welcome, "+ name + ". Here is your ticket" + cont + " for the " + transport + "!" );
  }
}

var getPlanetTicket = ticketBuilder('plane');
var getTrainTicket = ticketBuilder('train');


getPlanetTicket("Fulano");
getTrainTicket("Fulana");
getTrainTicket("Fulana 2");
 */

 // looping with closures

 function checkInPasajero (name, pasajeros) {
   var pasajeroCheck;
   for (var i=0; i<=pasajeros.length; i++) {
     if (pasajeros[i] === name) {
       return function () {
         console.log("El pasajero " + name + " se encuentre en la posición "+ (i+1));
       }
     }
   }

   return function () {
     console.log("El pasajero no esta en la lista");
   }
 }

var pasajeros = ["pasajero 1", "pasajero 2" , "pasajero 3", "pasajero 4", "pasajero 5"];
var counterCheckIn = checkInPasajero("foooo",pasajeros);


/*var y = 1;

function five () {
  y = 5;
  console.log(y);
}

console.log(five());
console.log(y);
*/
var jugador;
console.log(jugador);
//var jugador = 5;
