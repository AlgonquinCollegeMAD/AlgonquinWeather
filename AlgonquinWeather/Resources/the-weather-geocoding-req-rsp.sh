#!/bin/sh

#  the-weather-geocoding-req-rsp.sh
#  AlgonquinWeatherApp
#
#  Created by Vladimir Cezar on 2023-11-02.
#  

# REQUEST
curl "http://api.weatherapi.com/v1/search.json?key=0029abee5bd74c4dac3164031232011&q=London"

# RESPONSE
[
  {
    "id": 2801268,
    "name": "London",
    "region": "City of London, Greater London",
    "country": "United Kingdom",
    "lat": 51.52,
    "lon": -0.11,
    "url": "london-city-of-london-greater-london-united-kingdom"
  },
  {
    "id": 315398,
    "name": "London",
    "region": "Ontario",
    "country": "Canada",
    "lat": 42.98,
    "lon": -81.25,
    "url": "london-ontario-canada"
  }
]
