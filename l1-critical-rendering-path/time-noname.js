var loadTime = document.createElement('div');
loadTime.innerText = 'script executed @ ' + window.performance.now();
loadTime.style.color = 'blue';
document.body.appendChild(loadTime);
