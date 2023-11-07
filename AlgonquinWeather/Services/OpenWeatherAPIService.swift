import Foundation

enum WeatherError: Error {
  case invalidURL
}

class OpenWeatherAPIService {
  
  func getLocations(search searchString: String) async throws -> [LocationModel] {
    let urlString = "http://api.openweathermap.org/geo/1.0/direct?q=\(searchString)&limit=20&appid=df766d0efdfecd9cf618f52dc2c16a02"
    if let url = URL(string: urlString) {
      let (data, _) = try await URLSession.shared.data(from: url)
      return decodeLocationData(from: data)
    } else {
      throw WeatherError.invalidURL
    }
  }
  
  func getCurrentWeather(location: LocationModel) async throws -> CurrentWeatherModel? {
    let urlString = "https://api.openweathermap.org/data/2.5/weather?lat=\(location.lat)&lon=\(location.lon)&units=metric&&dt=1200&appid=df766d0efdfecd9cf618f52dc2c16a02"
    if let url = URL(string: urlString) {
      let (data, _) = try await URLSession.shared.data(from: url)
      return decodeCurrentWeatherData(from: data)
    } else {
      throw WeatherError.invalidURL
    }
  }
  /** Private functions **/
  private func decodeCurrentWeatherData(from json: Data) -> CurrentWeatherModel? {
    do {
      let decoder = JSONDecoder()
      let data = try decoder.decode(CurrentWeatherModel.self, from: json)
      return data
    } catch {
      print("Error decoding weather data: \(error)")
      return nil
    }
  }
  
  private func decodeLocationData(from json: Data) -> [LocationModel] {
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
