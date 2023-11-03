#!/bin/sh

#  current-forecast-request.sh
#  AlgonquinWeatherApp
#
#  Created by Vladimir Cezar on 2023-11-02.
#  

curl -o current-forecast-response.json "https://api.openweathermap.org/data/3.0/onecall/timemachine?lat=45.4208777&lon=-75.6901106&dt=1200&appid=df766d0efdfecd9cf618f52dc2c16a02"
