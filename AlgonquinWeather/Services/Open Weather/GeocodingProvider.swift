import Foundation

extension OpenWeather {
  class GeocodingProvider {
    func getLocations(search searchString: String) async throws -> [LocationModel] {
      let urlString = "http://api.openweathermap.org/geo/1.0/direct?q=\(searchString)&limit=20&appid=df766d0efdfecd9cf618f52dc2c16a02"
      if let url = URL(string: urlString) {
        let (data, _) = try await URLSession.shared.data(from: url)
        return decodeData(from: data)
      } else {
        throw WeatherError.invalidURL
      }
    }
    
    private func decodeData(from json: Data) -> [LocationModel] {
      do {
        let decoder = JSONDecoder()
        let data = try decoder.decode([LocationModel].self, from: json)
        return data
      } catch {
        print("Error decoding weather data: \(error)")
        return []
      }
    }
  }
}
