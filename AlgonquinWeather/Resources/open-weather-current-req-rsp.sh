#!/bin/sh

#  open-weather-current-req-rsp.sh
#  AlgonquinWeatherApp
#
#  Created by Vladimir Cezar on 2023-11-02.
#  

# REQUEST
curl "https://api.openweathermap.org/data/2.5/weather?lat=45.4208777&lon=-75.6901106&dt=1200&appid=df766d0efdfecd9cf618f52dc2c16a02"

# RESPONSE
{
  "coord": {
    "lon": -75.6901,
    "lat": 45.4209
  },
  "weather": [
    {
      "id": 803,
      "main": "Clouds",
      "description": "broken clouds",
      "icon": "04d"
    }
  ],
  "base": "stations",
  "main": {
    "temp": 7.21,
    "feels_like": 3.83,
    "temp_min": 5.97,
    "temp_max": 8.94,
    "pressure": 1024,
    "humidity": 52
  },
  "visibility": 10000,
  "wind": {
    "speed": 5.66,
    "deg": 220
  },
  "clouds": {
    "all": 75
  },
  "dt": 1698947241,
  "sys": {
    "type": 2,
    "id": 2005537,
    "country": "CA",
    "sunrise": 1698925382,
    "sunset": 1698961771
  },
  "timezone": -14400,
  "id": 7626289,
  "name": "ByWard Market",
  "cod": 200
}
