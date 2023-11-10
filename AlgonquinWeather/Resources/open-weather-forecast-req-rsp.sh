#!/bin/sh

#  current-forecast-request.sh
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
    },
    {
      "dt": 1699606800,
      "main": {
        "temp": 273.82,
        "feels_like": 269.87,
        "temp_min": 273.82,
        "temp_max": 273.82,
        "pressure": 1012,
        "sea_level": 1012,
        "grnd_level": 1003,
        "humidity": 90,
        "temp_kf": 0
      },
      "weather": [
        {
          "id": 802,
          "main": "Clouds",
          "description": "scattered clouds",
          "icon": "03n"
        }
      ],
      "clouds": {
        "all": 36
      },
      "wind": {
        "speed": 3.74,
        "deg": 240,
        "gust": 10.23
      },
      "visibility": 10000,
      "pop": 0,
      "sys": {
        "pod": "n"
      },
      "dt_txt": "2023-11-10 09:00:00"
    },
    {
      "dt": 1699617600,
      "main": {
        "temp": 274.49,
        "feels_like": 270.33,
        "temp_min": 274.49,
        "temp_max": 274.49,
        "pressure": 1013,
        "sea_level": 1013,
        "grnd_level": 1005,
        "humidity": 92,
        "temp_kf": 0
      },
      "weather": [
        {
          "id": 803,
          "main": "Clouds",
          "description": "broken clouds",
          "icon": "04d"
        }
      ],
      "clouds": {
        "all": 65
      },
      "wind": {
        "speed": 4.29,
        "deg": 235,
        "gust": 10.43
      },
      "visibility": 10000,
      "pop": 0,
      "sys": {
        "pod": "d"
      },
      "dt_txt": "2023-11-10 12:00:00"
    },
    {
      "dt": 1699628400,
      "main": {
        "temp": 275.32,
        "feels_like": 271.12,
        "temp_min": 275.32,
        "temp_max": 275.32,
        "pressure": 1014,
        "sea_level": 1014,
        "grnd_level": 1006,
        "humidity": 98,
        "temp_kf": 0
      },
      "weather": [
        {
          "id": 804,
          "main": "Clouds",
          "description": "overcast clouds",
          "icon": "04d"
        }
      ],
      "clouds": {
        "all": 100
      },
      "wind": {
        "speed": 4.69,
        "deg": 238,
        "gust": 9.95
      },
      "visibility": 9901,
      "pop": 0,
      "sys": {
        "pod": "d"
      },
      "dt_txt": "2023-11-10 15:00:00"
    },
    {
      "dt": 1699639200,
      "main": {
        "temp": 278.01,
        "feels_like": 274.36,
        "temp_min": 278.01,
        "temp_max": 278.01,
        "pressure": 1014,
        "sea_level": 1014,
        "grnd_level": 1005,
        "humidity": 87,
        "temp_kf": 0
      },
      "weather": [
        {
          "id": 500,
          "main": "Rain",
          "description": "light rain",
          "icon": "10d"
        }
      ],
      "clouds": {
        "all": 88
      },
      "wind": {
        "speed": 4.89,
        "deg": 256,
        "gust": 9.47
      },
      "visibility": 10000,
      "pop": 0.2,
      "rain": {
        "3h": 0.15
      },
      "sys": {
        "pod": "d"
      },
      "dt_txt": "2023-11-10 18:00:00"
    },
    {
      "dt": 1699650000,
      "main": {
        "temp": 276.77,
        "feels_like": 273.27,
        "temp_min": 276.77,
        "temp_max": 276.77,
        "pressure": 1015,
        "sea_level": 1015,
        "grnd_level": 1007,
        "humidity": 89,
        "temp_kf": 0
      },
      "weather": [
        {
          "id": 500,
          "main": "Rain",
          "description": "light rain",
          "icon": "10d"
        }
      ],
      "clouds": {
        "all": 99
      },
      "wind": {
        "speed": 4.08,
        "deg": 272,
        "gust": 8.49
      },
      "visibility": 10000,
      "pop": 0.42,
      "rain": {
        "3h": 0.27
      },
      "sys": {
        "pod": "d"
      },
      "dt_txt": "2023-11-10 21:00:00"
    },
    {
      "dt": 1699660800,
      "main": {
        "temp": 273.9,
        "feels_like": 270.11,
        "temp_min": 273.9,
        "temp_max": 273.9,
        "pressure": 1018,
        "sea_level": 1018,
        "grnd_level": 1010,
        "humidity": 87,
        "temp_kf": 0
      },
      "weather": [
        {
          "id": 600,
          "main": "Snow",
          "description": "light snow",
          "icon": "13n"
        }
      ],
      "clouds": {
        "all": 99
      },
      "wind": {
        "speed": 3.55,
        "deg": 306,
        "gust": 9.99
      },
      "visibility": 10000,
      "pop": 0.22,
      "snow": {
        "3h": 0.18
      },
      "sys": {
        "pod": "n"
      },
      "dt_txt": "2023-11-11 00:00:00"
    },
    {
      "dt": 1699671600,
      "main": {
        "temp": 270.72,
        "feels_like": 267.12,
        "temp_min": 270.72,
        "temp_max": 270.72,
        "pressure": 1021,
        "sea_level": 1021,
        "grnd_level": 1012,
        "humidity": 91,
        "temp_kf": 0
      },
      "weather": [
        {
          "id": 803,
          "main": "Clouds",
          "description": "broken clouds",
          "icon": "04n"
        }
      ],
      "clouds": {
        "all": 52
      },
      "wind": {
        "speed": 2.62,
        "deg": 299,
        "gust": 6.09
      },
      "visibility": 10000,
      "pop": 0,
      "sys": {
        "pod": "n"
      },
      "dt_txt": "2023-11-11 03:00:00"
    },
    {
      "dt": 1699682400,
      "main": {
        "temp": 269.59,
        "feels_like": 265.73,
        "temp_min": 269.59,
        "temp_max": 269.59,
        "pressure": 1023,
        "sea_level": 1023,
        "grnd_level": 1014,
        "humidity": 92,
        "temp_kf": 0
      },
      "weather": [
        {
          "id": 802,
          "main": "Clouds",
          "description": "scattered clouds",
          "icon": "03n"
        }
      ],
      "clouds": {
        "all": 32
      },
      "wind": {
        "speed": 2.66,
        "deg": 295,
        "gust": 6.08
      },
      "visibility": 10000,
      "pop": 0,
      "sys": {
        "pod": "n"
      },
      "dt_txt": "2023-11-11 06:00:00"
    },
    {
      "dt": 1699693200,
      "main": {
        "temp": 269.13,
        "feels_like": 265.38,
        "temp_min": 269.13,
        "temp_max": 269.13,
        "pressure": 1025,
        "sea_level": 1025,
        "grnd_level": 1016,
        "humidity": 92,
        "temp_kf": 0
      },
      "weather": [
        {
          "id": 800,
          "main": "Clear",
          "description": "clear sky",
          "icon": "01n"
        }
      ],
      "clouds": {
        "all": 6
      },
      "wind": {
        "speed": 2.49,
        "deg": 303,
        "gust": 6.47
      },
      "visibility": 10000,
      "pop": 0,
      "sys": {
        "pod": "n"
      },
      "dt_txt": "2023-11-11 09:00:00"
    },
    {
      "dt": 1699704000,
      "main": {
        "temp": 268.88,
        "feels_like": 265.2,
        "temp_min": 268.88,
        "temp_max": 268.88,
        "pressure": 1027,
        "sea_level": 1027,
        "grnd_level": 1019,
        "humidity": 93,
        "temp_kf": 0
      },
      "weather": [
        {
          "id": 800,
          "main": "Clear",
          "description": "clear sky",
          "icon": "01d"
        }
      ],
      "clouds": {
        "all": 7
      },
      "wind": {
        "speed": 2.39,
        "deg": 297,
        "gust": 5.09
      },
      "visibility": 10000,
      "pop": 0,
      "sys": {
        "pod": "d"
      },
      "dt_txt": "2023-11-11 12:00:00"
    },
    {
      "dt": 1699714800,
      "main": {
        "temp": 272.85,
        "feels_like": 269.14,
        "temp_min": 272.85,
        "temp_max": 272.85,
        "pressure": 1029,
        "sea_level": 1029,
        "grnd_level": 1021,
        "humidity": 76,
        "temp_kf": 0
      },
      "weather": [
        {
          "id": 800,
          "main": "Clear",
          "description": "clear sky",
          "icon": "01d"
        }
      ],
      "clouds": {
        "all": 7
      },
      "wind": {
        "speed": 3.17,
        "deg": 311,
        "gust": 4.71
      },
      "visibility": 10000,
      "pop": 0,
      "sys": {
        "pod": "d"
      },
      "dt_txt": "2023-11-11 15:00:00"
    },
    {
      "dt": 1699725600,
      "main": {
        "temp": 274.94,
        "feels_like": 271.43,
        "temp_min": 274.94,
        "temp_max": 274.94,
        "pressure": 1029,
        "sea_level": 1029,
        "grnd_level": 1021,
        "humidity": 67,
        "temp_kf": 0
      },
      "weather": [
        {
          "id": 802,
          "main": "Clouds",
          "description": "scattered clouds",
          "icon": "03d"
        }
      ],
      "clouds": {
        "all": 43
      },
      "wind": {
        "speed": 3.48,
        "deg": 316,
        "gust": 4.69
      },
      "visibility": 10000,
      "pop": 0,
      "sys": {
        "pod": "d"
      },
      "dt_txt": "2023-11-11 18:00:00"
    },
    {
      "dt": 1699736400,
      "main": {
        "temp": 273.67,
        "feels_like": 270.95,
        "temp_min": 273.67,
        "temp_max": 273.67,
        "pressure": 1031,
        "sea_level": 1031,
        "grnd_level": 1022,
        "humidity": 78,
        "temp_kf": 0
      },
      "weather": [
        {
          "id": 803,
          "main": "Clouds",
          "description": "broken clouds",
          "icon": "04d"
        }
      ],
      "clouds": {
        "all": 79
      },
      "wind": {
        "speed": 2.3,
        "deg": 289,
        "gust": 3.59
      },
      "visibility": 10000,
      "pop": 0,
      "sys": {
        "pod": "d"
      },
      "dt_txt": "2023-11-11 21:00:00"
    },
    {
      "dt": 1699747200,
      "main": {
        "temp": 271.03,
        "feels_like": 267.75,
        "temp_min": 271.03,
        "temp_max": 271.03,
        "pressure": 1032,
        "sea_level": 1032,
        "grnd_level": 1024,
        "humidity": 86,
        "temp_kf": 0
      },
      "weather": [
        {
          "id": 802,
          "main": "Clouds",
          "description": "scattered clouds",
          "icon": "03n"
        }
      ],
      "clouds": {
        "all": 46
      },
      "wind": {
        "speed": 2.38,
        "deg": 298,
        "gust": 3.68
      },
      "visibility": 10000,
      "pop": 0,
      "sys": {
        "pod": "n"
      },
      "dt_txt": "2023-11-12 00:00:00"
    },
    {
      "dt": 1699758000,
      "main": {
        "temp": 270.4,
        "feels_like": 267.4,
        "temp_min": 270.4,
        "temp_max": 270.4,
        "pressure": 1034,
        "sea_level": 1034,
        "grnd_level": 1025,
        "humidity": 85,
        "temp_kf": 0
      },
      "weather": [
        {
          "id": 801,
          "main": "Clouds",
          "description": "few clouds",
          "icon": "02n"
        }
      ],
      "clouds": {
        "all": 11
      },
      "wind": {
        "speed": 2.07,
        "deg": 327,
        "gust": 2.42
      },
      "visibility": 10000,
      "pop": 0,
      "sys": {
        "pod": "n"
      },
      "dt_txt": "2023-11-12 03:00:00"
    },
    {
      "dt": 1699768800,
      "main": {
        "temp": 270.08,
        "feels_like": 267.24,
        "temp_min": 270.08,
        "temp_max": 270.08,
        "pressure": 1035,
        "sea_level": 1035,
        "grnd_level": 1026,
        "humidity": 84,
        "temp_kf": 0
      },
      "weather": [
        {
          "id": 800,
          "main": "Clear",
          "description": "clear sky",
          "icon": "01n"
        }
      ],
      "clouds": {
        "all": 9
      },
      "wind": {
        "speed": 1.91,
        "deg": 341,
        "gust": 1.91
      },
      "visibility": 10000,
      "pop": 0,
      "sys": {
        "pod": "n"
      },
      "dt_txt": "2023-11-12 06:00:00"
    },
    {
      "dt": 1699779600,
      "main": {
        "temp": 269.75,
        "feels_like": 266.89,
        "temp_min": 269.75,
        "temp_max": 269.75,
        "pressure": 1036,
        "sea_level": 1036,
        "grnd_level": 1027,
        "humidity": 85,
        "temp_kf": 0
      },
      "weather": [
        {
          "id": 800,
          "main": "Clear",
          "description": "clear sky",
          "icon": "01n"
        }
      ],
      "clouds": {
        "all": 6
      },
      "wind": {
        "speed": 1.89,
        "deg": 345,
        "gust": 1.98
      },
      "visibility": 10000,
      "pop": 0,
      "sys": {
        "pod": "n"
      },
      "dt_txt": "2023-11-12 09:00:00"
    },
    {
      "dt": 1699790400,
      "main": {
        "temp": 269.51,
        "feels_like": 267.12,
        "temp_min": 269.51,
        "temp_max": 269.51,
        "pressure": 1036,
        "sea_level": 1036,
        "grnd_level": 1028,
        "humidity": 86,
        "temp_kf": 0
      },
      "weather": [
        {
          "id": 800,
          "main": "Clear",
          "description": "clear sky",
          "icon": "01d"
        }
      ],
      "clouds": {
        "all": 5
      },
      "wind": {
        "speed": 1.57,
        "deg": 355,
        "gust": 1.53
      },
      "visibility": 10000,
      "pop": 0,
      "sys": {
        "pod": "d"
      },
      "dt_txt": "2023-11-12 12:00:00"
    },
    {
      "dt": 1699801200,
      "main": {
        "temp": 273.47,
        "feels_like": 273.47,
        "temp_min": 273.47,
        "temp_max": 273.47,
        "pressure": 1037,
        "sea_level": 1037,
        "grnd_level": 1028,
        "humidity": 67,
        "temp_kf": 0
      },
      "weather": [
        {
          "id": 800,
          "main": "Clear",
          "description": "clear sky",
          "icon": "01d"
        }
      ],
      "clouds": {
        "all": 5
      },
      "wind": {
        "speed": 0.72,
        "deg": 358,
        "gust": 0.87
      },
      "visibility": 10000,
      "pop": 0,
      "sys": {
        "pod": "d"
      },
      "dt_txt": "2023-11-12 15:00:00"
    },
    {
      "dt": 1699812000,
      "main": {
        "temp": 275.57,
        "feels_like": 275.57,
        "temp_min": 275.57,
        "temp_max": 275.57,
        "pressure": 1035,
        "sea_level": 1035,
        "grnd_level": 1027,
        "humidity": 58,
        "temp_kf": 0
      },
      "weather": [
        {
          "id": 800,
          "main": "Clear",
          "description": "clear sky",
          "icon": "01d"
        }
      ],
      "clouds": {
        "all": 5
      },
      "wind": {
        "speed": 1.14,
        "deg": 299,
        "gust": 1.29
      },
      "visibility": 10000,
      "pop": 0,
      "sys": {
        "pod": "d"
      },
      "dt_txt": "2023-11-12 18:00:00"
    },
    {
      "dt": 1699822800,
      "main": {
        "temp": 273.8,
        "feels_like": 273.8,
        "temp_min": 273.8,
        "temp_max": 273.8,
        "pressure": 1034,
        "sea_level": 1034,
        "grnd_level": 1026,
        "humidity": 70,
        "temp_kf": 0
      },
      "weather": [
        {
          "id": 800,
          "main": "Clear",
          "description": "clear sky",
          "icon": "01d"
        }
      ],
      "clouds": {
        "all": 5
      },
      "wind": {
        "speed": 0.34,
        "deg": 236,
        "gust": 0.7
      },
      "visibility": 10000,
      "pop": 0,
      "sys": {
        "pod": "d"
      },
      "dt_txt": "2023-11-12 21:00:00"
    },
    {
      "dt": 1699833600,
      "main": {
        "temp": 271.32,
        "feels_like": 271.32,
        "temp_min": 271.32,
        "temp_max": 271.32,
        "pressure": 1034,
        "sea_level": 1034,
        "grnd_level": 1025,
        "humidity": 78,
        "temp_kf": 0
      },
      "weather": [
        {
          "id": 800,
          "main": "Clear",
          "description": "clear sky",
          "icon": "01n"
        }
      ],
      "clouds": {
        "all": 4
      },
      "wind": {
        "speed": 0.58,
        "deg": 233,
        "gust": 0.79
      },
      "visibility": 10000,
      "pop": 0,
      "sys": {
        "pod": "n"
      },
      "dt_txt": "2023-11-13 00:00:00"
    },
    {
      "dt": 1699844400,
      "main": {
        "temp": 270.79,
        "feels_like": 270.79,
        "temp_min": 270.79,
        "temp_max": 270.79,
        "pressure": 1033,
        "sea_level": 1033,
        "grnd_level": 1024,
        "humidity": 80,
        "temp_kf": 0
      },
      "weather": [
        {
          "id": 800,
          "main": "Clear",
          "description": "clear sky",
          "icon": "01n"
        }
      ],
      "clouds": {
        "all": 1
      },
      "wind": {
        "speed": 1.09,
        "deg": 168,
        "gust": 1.13
      },
      "visibility": 10000,
      "pop": 0,
      "sys": {
        "pod": "n"
      },
      "dt_txt": "2023-11-13 03:00:00"
    },
    {
      "dt": 1699855200,
      "main": {
        "temp": 270.43,
        "feels_like": 270.43,
        "temp_min": 270.43,
        "temp_max": 270.43,
        "pressure": 1031,
        "sea_level": 1031,
        "grnd_level": 1023,
        "humidity": 82,
        "temp_kf": 0
      },
      "weather": [
        {
          "id": 802,
          "main": "Clouds",
          "description": "scattered clouds",
          "icon": "03n"
        }
      ],
      "clouds": {
        "all": 26
      },
      "wind": {
        "speed": 1.25,
        "deg": 164,
        "gust": 1.29
      },
      "visibility": 10000,
      "pop": 0,
      "sys": {
        "pod": "n"
      },
      "dt_txt": "2023-11-13 06:00:00"
    },
    {
      "dt": 1699866000,
      "main": {
        "temp": 270.27,
        "feels_like": 270.27,
        "temp_min": 270.27,
        "temp_max": 270.27,
        "pressure": 1030,
        "sea_level": 1030,
        "grnd_level": 1021,
        "humidity": 83,
        "temp_kf": 0
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
        "all": 95
      },
      "wind": {
        "speed": 1.22,
        "deg": 184,
        "gust": 1.43
      },
      "visibility": 10000,
      "pop": 0,
      "sys": {
        "pod": "n"
      },
      "dt_txt": "2023-11-13 09:00:00"
    },
    {
      "dt": 1699876800,
      "main": {
        "temp": 270.47,
        "feels_like": 267.47,
        "temp_min": 270.47,
        "temp_max": 270.47,
        "pressure": 1027,
        "sea_level": 1027,
        "grnd_level": 1018,
        "humidity": 82,
        "temp_kf": 0
      },
      "weather": [
        {
          "id": 804,
          "main": "Clouds",
          "description": "overcast clouds",
          "icon": "04d"
        }
      ],
      "clouds": {
        "all": 97
      },
      "wind": {
        "speed": 2.08,
        "deg": 152,
        "gust": 4.21
      },
      "visibility": 10000,
      "pop": 0,
      "sys": {
        "pod": "d"
      },
      "dt_txt": "2023-11-13 12:00:00"
    },
    {
      "dt": 1699887600,
      "main": {
        "temp": 273.24,
        "feels_like": 269.37,
        "temp_min": 273.24,
        "temp_max": 273.24,
        "pressure": 1024,
        "sea_level": 1024,
        "grnd_level": 1015,
        "humidity": 91,
        "temp_kf": 0
      },
      "weather": [
        {
          "id": 600,
          "main": "Snow",
          "description": "light snow",
          "icon": "13d"
        }
      ],
      "clouds": {
        "all": 99
      },
      "wind": {
        "speed": 3.47,
        "deg": 155,
        "gust": 6.78
      },
      "visibility": 7112,
      "pop": 0.66,
      "snow": {
        "3h": 0.55
      },
      "sys": {
        "pod": "d"
      },
      "dt_txt": "2023-11-13 15:00:00"
    },
    {
      "dt": 1699898400,
      "main": {
        "temp": 278.42,
        "feels_like": 275.21,
        "temp_min": 278.42,
        "temp_max": 278.42,
        "pressure": 1019,
        "sea_level": 1019,
        "grnd_level": 1011,
        "humidity": 73,
        "temp_kf": 0
      },
      "weather": [
        {
          "id": 804,
          "main": "Clouds",
          "description": "overcast clouds",
          "icon": "04d"
        }
      ],
      "clouds": {
        "all": 99
      },
      "wind": {
        "speed": 4.24,
        "deg": 179,
        "gust": 8.9
      },
      "visibility": 10000,
      "pop": 0.53,
      "sys": {
        "pod": "d"
      },
      "dt_txt": "2023-11-13 18:00:00"
    },
    {
      "dt": 1699909200,
      "main": {
        "temp": 276.81,
        "feels_like": 275.1,
        "temp_min": 276.81,
        "temp_max": 276.81,
        "pressure": 1016,
        "sea_level": 1016,
        "grnd_level": 1008,
        "humidity": 90,
        "temp_kf": 0
      },
      "weather": [
        {
          "id": 804,
          "main": "Clouds",
          "description": "overcast clouds",
          "icon": "04d"
        }
      ],
      "clouds": {
        "all": 100
      },
      "wind": {
        "speed": 1.87,
        "deg": 181,
        "gust": 3.93
      },
      "visibility": 10000,
      "pop": 0,
      "sys": {
        "pod": "d"
      },
      "dt_txt": "2023-11-13 21:00:00"
    },
    {
      "dt": 1699920000,
      "main": {
        "temp": 277.46,
        "feels_like": 273.59,
        "temp_min": 277.46,
        "temp_max": 277.46,
        "pressure": 1015,
        "sea_level": 1015,
        "grnd_level": 1007,
        "humidity": 89,
        "temp_kf": 0
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
        "all": 99
      },
      "wind": {
        "speed": 5.06,
        "deg": 282,
        "gust": 11.62
      },
      "visibility": 10000,
      "pop": 0.4,
      "rain": {
        "3h": 0.49
      },
      "sys": {
        "pod": "n"
      },
      "dt_txt": "2023-11-14 00:00:00"
    },
    {
      "dt": 1699930800,
      "main": {
        "temp": 276.02,
        "feels_like": 271.48,
        "temp_min": 276.02,
        "temp_max": 276.02,
        "pressure": 1017,
        "sea_level": 1017,
        "grnd_level": 1009,
        "humidity": 94,
        "temp_kf": 0
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
        "all": 100
      },
      "wind": {
        "speed": 5.69,
        "deg": 291,
        "gust": 12.24
      },
      "visibility": 8782,
      "pop": 0.32,
      "rain": {
        "3h": 0.11
      },
      "sys": {
        "pod": "n"
      },
      "dt_txt": "2023-11-14 03:00:00"
    },
    {
      "dt": 1699941600,
      "main": {
        "temp": 275.71,
        "feels_like": 271.1,
        "temp_min": 275.71,
        "temp_max": 275.71,
        "pressure": 1019,
        "sea_level": 1019,
        "grnd_level": 1010,
        "humidity": 87,
        "temp_kf": 0
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
        "all": 100
      },
      "wind": {
        "speed": 5.68,
        "deg": 294,
        "gust": 12.52
      },
      "visibility": 10000,
      "pop": 0.01,
      "sys": {
        "pod": "n"
      },
      "dt_txt": "2023-11-14 06:00:00"
    },
    {
      "dt": 1699952400,
      "main": {
        "temp": 275.67,
        "feels_like": 270.85,
        "temp_min": 275.67,
        "temp_max": 275.67,
        "pressure": 1021,
        "sea_level": 1021,
        "grnd_level": 1013,
        "humidity": 90,
        "temp_kf": 0
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
        "all": 100
      },
      "wind": {
        "speed": 6.11,
        "deg": 298,
        "gust": 12.6
      },
      "visibility": 10000,
      "pop": 0.05,
      "sys": {
        "pod": "n"
      },
      "dt_txt": "2023-11-14 09:00:00"
    },
    {
      "dt": 1699963200,
      "main": {
        "temp": 274.93,
        "feels_like": 270.3,
        "temp_min": 274.93,
        "temp_max": 274.93,
        "pressure": 1024,
        "sea_level": 1024,
        "grnd_level": 1016,
        "humidity": 89,
        "temp_kf": 0
      },
      "weather": [
        {
          "id": 804,
          "main": "Clouds",
          "description": "overcast clouds",
          "icon": "04d"
        }
      ],
      "clouds": {
        "all": 99
      },
      "wind": {
        "speed": 5.3,
        "deg": 300,
        "gust": 11.92
      },
      "visibility": 10000,
      "pop": 0,
      "sys": {
        "pod": "d"
      },
      "dt_txt": "2023-11-14 12:00:00"
    },
    {
      "dt": 1699974000,
      "main": {
        "temp": 276.48,
        "feels_like": 272.21,
        "temp_min": 276.48,
        "temp_max": 276.48,
        "pressure": 1026,
        "sea_level": 1026,
        "grnd_level": 1018,
        "humidity": 81,
        "temp_kf": 0
      },
      "weather": [
        {
          "id": 803,
          "main": "Clouds",
          "description": "broken clouds",
          "icon": "04d"
        }
      ],
      "clouds": {
        "all": 65
      },
      "wind": {
        "speed": 5.38,
        "deg": 309,
        "gust": 8.55
      },
      "visibility": 10000,
      "pop": 0,
      "sys": {
        "pod": "d"
      },
      "dt_txt": "2023-11-14 15:00:00"
    },
    {
      "dt": 1699984800,
      "main": {
        "temp": 275.56,
        "feels_like": 271.75,
        "temp_min": 275.56,
        "temp_max": 275.56,
        "pressure": 1027,
        "sea_level": 1027,
        "grnd_level": 1019,
        "humidity": 80,
        "temp_kf": 0
      },
      "weather": [
        {
          "id": 803,
          "main": "Clouds",
          "description": "broken clouds",
          "icon": "04d"
        }
      ],
      "clouds": {
        "all": 77
      },
      "wind": {
        "speed": 4.13,
        "deg": 307,
        "gust": 6.81
      },
      "visibility": 10000,
      "pop": 0,
      "sys": {
        "pod": "d"
      },
      "dt_txt": "2023-11-14 18:00:00"
    },
    {
      "dt": 1699995600,
      "main": {
        "temp": 275.24,
        "feels_like": 272.47,
        "temp_min": 275.24,
        "temp_max": 275.24,
        "pressure": 1028,
        "sea_level": 1028,
        "grnd_level": 1020,
        "humidity": 81,
        "temp_kf": 0
      },
      "weather": [
        {
          "id": 804,
          "main": "Clouds",
          "description": "overcast clouds",
          "icon": "04d"
        }
      ],
      "clouds": {
        "all": 100
      },
      "wind": {
        "speed": 2.64,
        "deg": 305,
        "gust": 4.69
      },
      "visibility": 10000,
      "pop": 0,
      "sys": {
        "pod": "d"
      },
      "dt_txt": "2023-11-14 21:00:00"
    },
    {
      "dt": 1700006400,
      "main": {
        "temp": 274.85,
        "feels_like": 272.87,
        "temp_min": 274.85,
        "temp_max": 274.85,
        "pressure": 1029,
        "sea_level": 1029,
        "grnd_level": 1021,
        "humidity": 81,
        "temp_kf": 0
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
        "all": 100
      },
      "wind": {
        "speed": 1.84,
        "deg": 297,
        "gust": 2.55
      },
      "visibility": 10000,
      "pop": 0,
      "sys": {
        "pod": "n"
      },
      "dt_txt": "2023-11-15 00:00:00"
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
