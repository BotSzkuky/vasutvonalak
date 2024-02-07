function calculate() {
  var travelDistance = parseFloat(document.getElementById('travelDistance').value);
  var travelSpeed = parseFloat(document.getElementById('travelSpeed').value);
  
  if (isNaN(travelDistance) || isNaN(travelSpeed) || travelSpeed <= 0) {
    alert("Kérem, adja meg a távolságot és a pozitív sebességet számokkal!");
    return;
  }
  
  var averageTravelTime = travelDistance / travelSpeed;
  
  alert("Az átlagos menetidő: " + averageTravelTime.toFixed(2) + " óra");
}

function addCity() {
  var cityName = document.getElementById('cityName').value;

  if (!cityName) {
      alert('Kérlek, add meg a város nevét.');
      return;
  }

  var xhr = new XMLHttpRequest();
  xhr.open('POST', 'vasutvonalak.php', true);
  xhr.setRequestHeader('Content-Type', 'application/x-www-form-urlencoded');
  xhr.onload = function() {
      if (xhr.status === 200) {
          alert(xhr.responseText);
          document.getElementById('cityForm').reset();
      } else {
          alert('Hiba történt a város hozzáadása közben.');
      }
  };
  xhr.send('cityName=' + encodeURIComponent(cityName));
}

window.onload = updateOptions;