var map = L.map('map').setView([41.902782, 12.496366], 5)

L.tileLayer('https://api.maptiler.com/maps/hybrid/{z}/{x}/{y}.jpg?key=Ti3E8ZbkWLT3iNjmrbdl', {
  attribution:'',
    maxZoom: 18,
    tileSize: 512,
    zoomOffset: -1,
}).addTo(map)

var planeIcon = L.icon({
  iconUrl: 'assets/img/icons/plane.png',
  iconSize: [16, 16],
})

function fetchData() {
  return fetch('https://opensky-network.org/api/states/all?extended=true')
    .then((res) => {
      return res.json()
    })
    .catch((err) => {
      if (err) throw err
    })
}

function putStates(map, markers) {
  fetchData().then(function (states) {
    states.states.forEach((state) => {
      if (state[6] != null && state[5] != null && state[0] != null) {
        const lat = state[6],
          lng = state[5],
          icao24 = state[0],
          angle = Math.ceil(state[10])

        if (markers[icao24]) {
          markers[icao24]
            .setLatLng([lat, lng], { icon: planeIcon, rotationAngle: angle, draggable: false })
            .bindPopup('<h3>' + state[1] + '</h3>')
        } else {
          markers[icao24] = L.marker([lat, lng], { icon: planeIcon, rotationAngle: angle, draggable: false }).bindPopup(
            '<h3>' + state[1] + '</h3>'
          )
          markers[icao24].addTo(map)
        }
      } else {
        return 0
      }
    })
    setTimeout(() => putStates(map, markers), 4000)
  })
}

const markers = {}
putStates(map, markers)
