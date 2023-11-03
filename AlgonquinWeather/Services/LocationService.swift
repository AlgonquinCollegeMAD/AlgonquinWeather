import Foundation

enum WeatherError: Error {
  case invalidURL
}

class LocationService: ObservableObject, Observable {
  @Published private(set) var locations: [Location] = []
  
  func getLocations(search searchString: String) async throws -> [Location] {
    let urlString = "http://api.openweathermap.org/geo/1.0/direct?q=\(searchString)&limit=20&appid=df766d0efdfecd9cf618f52dc2c16a02"
    if let url = URL(string: urlString) {
      let (data, _) = try await URLSession.shared.data(from: url)
      return decodeData(from: data)
    } else {
      throw WeatherError.invalidURL
    }
  }
  
  /** Private functions **/
  private func decodeData(from json: Data) -> [Location] {
    do {
      let decoder = JSONDecoder()
      let data = try decoder.decode([Location].self, from: json)
      return data
    } catch {
      print("Error decoding weather data: \(error)")
      return []
    }
  }
}
