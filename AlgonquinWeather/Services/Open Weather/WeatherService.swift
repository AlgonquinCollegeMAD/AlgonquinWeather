import Foundation

extension OpenWeather {
  class WeatherService {
    func getCurrentWeather(location: LocationModel) async throws -> CurrentWeatherModel? {
      let urlString = "https://api.openweathermap.org/data/2.5/weather?lat=\(location.lat)&lon=\(location.lon)&units=metric&&dt=1200&appid=df766d0efdfecd9cf618f52dc2c16a02"
      if let url = URL(string: urlString) {
        let (data, _) = try await URLSession.shared.data(from: url)
        do {
          let decoder = JSONDecoder()
          let currentWeather = try decoder.decode(CurrentWeatherModel.self, from: data)
          return currentWeather
        } catch {
          print("Error decoding weather data: \(error)")
          return nil
        }
      } else {
        throw WeatherError.invalidURL
      }
    }
  }
}
