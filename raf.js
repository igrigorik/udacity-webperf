function calculaNewPosition() { ... }

function updateFunction() {
  var ball = document.getElementById("ball");
  ball.style.position = calculateNewPosition();

  requestAnimationFrame(updateFunction);
}

requestAnimationFrame(updateFunction);
