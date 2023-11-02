#!/bin/sh

#  DirectGeocodingRequest.sh
#  AlgonquinWeatherApp
#
#  Created by Vladimir Cezar on 2023-11-02.
#  

curl -o current-forecast-response.json "http://api.openweathermap.org/geo/1.0/direct?q=Ottawa&limit=5&appid=df766d0efdfecd9cf618f52dc2c16a02"
