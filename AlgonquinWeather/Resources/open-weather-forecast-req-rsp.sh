#!/bin/sh

#  open-weather-forecast-req-rsp.sh
#  AlgonquinWeatherApp
#
#  Created by Vladimir Cezar on 2023-11-02.
#  

# REQUEST
curl "https://api.openweathermap.org/data/2.5/forecast?lat=45.4208777&lon=-75.6901106&dt=1200&appid=df766d0efdfecd9cf618f52dc2c16a02"

# RESPONSE
{
  "cod": "200",
  "message": 0,
  "cnt": 40,
  "list": [
    {
      "dt": 1699585200,
      "main": {
        "temp": 274.82,
        "feels_like": 270.6,
        "temp_min": 274.82,
        "temp_max": 275.05,
        "pressure": 1010,
        "sea_level": 1010,
        "grnd_level": 1002,
        "humidity": 97,
        "temp_kf": -0.23
      },
      "weather": [
        {
          "id": 500,
          "main": "Rain",
          "description": "light rain",
          "icon": "10n"
        }
      ],
      "clouds": {
        "all": 98
      },
      "wind": {
        "speed": 4.51,
        "deg": 232,
        "gust": 13.12
      },
      "visibility": 10000,
      "pop": 0.35,
      "rain": {
        "3h": 0.11
      },
      "sys": {
        "pod": "n"
      },
      "dt_txt": "2023-11-10 03:00:00"
    },
    {
      "dt": 1699596000,
      "main": {
        "temp": 274.95,
        "feels_like": 270.07,
        "temp_min": 274.95,
        "temp_max": 275.08,
        "pressure": 1011,
        "sea_level": 1011,
        "grnd_level": 1002,
        "humidity": 94,
        "temp_kf": -0.13
      },
      "weather": [
        {
          "id": 804,
          "main": "Clouds",
          "description": "overcast clouds",
          "icon": "04n"
        }
      ],
      "clouds": {
        "all": 92
      },
      "wind": {
        "speed": 5.82,
        "deg": 254,
        "gust": 12.92
      },
      "visibility": 10000,
      "pop": 0.1,
      "sys": {
        "pod": "n"
      },
      "dt_txt": "2023-11-10 06:00:00"
    }
  ],
  "city": {
    "id": 7626289,
    "name": "ByWard Market",
    "coord": {
      "lat": 45.4209,
      "lon": -75.6901
    },
    "country": "CA",
    "population": 0,
    "timezone": -18000,
    "sunrise": 1699530775,
    "sunset": 1699566017
  }
}
