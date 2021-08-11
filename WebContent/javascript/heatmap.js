/*
 *	Author: Yan Yan
 *	fake heatmap data, for display purpose only
 */


let map, heatmap;

function initMap() {
  map = new google.maps.Map(document.getElementById("map"), {
    zoom: 10,
    center: { lat: 47.6062, lng: -122.3321 }
   // mapTypeId: "satellite",
  });
  heatmap = new google.maps.visualization.HeatmapLayer({
    data: getPoints(),
    map: map,
	radius: 20
  });
  document
    .getElementById("toggle-heatmap")
    .addEventListener("click", toggleHeatmap);
  document
    .getElementById("change-gradient")
    .addEventListener("click", changeGradient);
  document
    .getElementById("change-opacity")
    .addEventListener("click", changeOpacity);
  document
    .getElementById("change-radius")
    .addEventListener("click", changeRadius);
}

function toggleHeatmap() {
  heatmap.setMap(heatmap.getMap() ? null : map);
}

function changeGradient() {
  const gradient = [
    "rgba(0, 255, 255, 0)",
    "rgba(0, 255, 255, 1)",
    "rgba(0, 191, 255, 1)",
    "rgba(0, 127, 255, 1)",
    "rgba(0, 63, 255, 1)",
    "rgba(0, 0, 255, 1)",
    "rgba(0, 0, 223, 1)",
    "rgba(0, 0, 191, 1)",
    "rgba(0, 0, 159, 1)",
    "rgba(0, 0, 127, 1)",
    "rgba(63, 0, 91, 1)",
    "rgba(127, 0, 63, 1)",
    "rgba(191, 0, 31, 1)",
    "rgba(255, 0, 0, 1)",
  ];
  heatmap.set("gradient", heatmap.get("gradient") ? null : gradient);
}

function changeRadius() {
  heatmap.set("radius", heatmap.get("radius") ? null : 30);
}

function changeOpacity() {
  heatmap.set("opacity", heatmap.get("opacity") ? null : 0.2);
}

function getPoints() {
  var result = $.ajax ({
    url: "http://localhost:8080/heatmap",
    crossDomain: true,
    dataType: 'jsonp',
    method: "post",
    async: true,
    data: ""
  });
  var message = $.parseJSON(result.responseText);

  longitude = message["lng"];
  latitude = message["lat"];
  coordinates = [];
  for (var i = 0; i < longitude.length; i++) {
    coordinates.add(new google.maps.LatLng(latitude[i],longitude[i]));
  }
  return coordinates;
}