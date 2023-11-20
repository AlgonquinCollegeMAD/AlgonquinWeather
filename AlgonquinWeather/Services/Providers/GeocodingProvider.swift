import Foundation

protocol GeocodingProviderProtocol {
  func getLocations(search searchString: String) async throws -> [any LocationProtocol]
}

extension OpenWeather {
  class GeocodingProvider: GeocodingProviderProtocol {
    func getLocations(search searchString: String) async throws -> [any LocationProtocol] {
      let urlString = "http://api.openweathermap.org/geo/1.0/direct?q=\(searchString)&limit=20&appid=df766d0efdfecd9cf618f52dc2c16a02"
      if let url = URL(string: urlString) {
        let (data, _) = try await URLSession.shared.data(from: url)
        do {
          let decoder = JSONDecoder()
          let locations = try decoder.decode([OpenWeather.Location].self, from: data)
          return locations
        } catch {
          print("Error decoding weather data: \(error)")
          return []
        }
      } else {
        throw WeatherError.invalidURL
      }
    }
  }
}

extension TheWeatherAPI {
  class GeocodingProvider: GeocodingProviderProtocol {
    func getLocations(search searchString: String) async throws -> [any LocationProtocol] {
      let urlString = "http://api.weatherapi.com/v1/search.json?key=0029abee5bd74c4dac3164031232011&q=\(searchString)"
      if let url = URL(string: urlString) {
        let (data, _) = try await URLSession.shared.data(from: url)
        do {
          let decoder = JSONDecoder()
          let locations = try decoder.decode([TheWeatherAPI.Location].self, from: data)
          return locations
        } catch {
          print("Error decoding weather data: \(error)")
          return []
        }
      } else {
        throw WeatherError.invalidURL
      }
    }
  }
}
