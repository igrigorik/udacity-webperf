function timing() {
  var t = window.performance.timing,
    interactive = t.domInteractive - t.domLoading,
    dcl = t.domContentLoadedEventStart - t.domLoading,
    complete = t.domComplete - t.domLoading;

  var stats = document.createElement('p');
  stats.innerText = 'interactive: ' + interactive + 'ms, ' +
      'dcl: ' + dcl + 'ms, complete: ' + complete + 'ms';

  document.body.appendChild(stats);
}
