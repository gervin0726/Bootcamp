/*window.onload = function () {
  var http = new XMLHttpRequest();
  http.open("GET","data/tweets.json",true);

  http.onreadysatatechange = function () {
    if (http.readyState == 4 && http.status == 200) {
      var respuesta = JSON.parse(http.response));
      console.log(respuesta);
      alert(respuesta.Tweets[0].texto)
    }
  }

  http.send();

  console.log("Otro ejemplo");
  console.log("A ver qué se pinta primero");

  function pintarvalores () {

  }
};*/


window.onload = function () {
  var http = new XMLHttpRequest();
  http.open("GET","data/tweets.json",true);

  http.onreadysatatechange = recibirrespuesta;

  http.send();

  console.log("Otro ejemplo");
  console.log("A ver qué se pinta primero");

  function recibirrespuesta () {
    if (http.readyState == 3) {
      console.log('Loading.......');
    }
    if (http.readyState == 4 && http.status == 200) {
      var respuesta = JSON.parse(http.response));
      console.log(respuesta);
      alert(respuesta.Tweets[0].texto)
    }
  }
};
