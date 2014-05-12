var loadTime = document.createElement('div');
loadTime.innerText = document.currentScript.src + ' executed @ ' + window.performance.now();
loadTime.style.color = 'blue';
document.body.appendChild(loadTime);
