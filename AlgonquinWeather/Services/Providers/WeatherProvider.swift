import Foundation
extension OpenWeather {
  class WeatherProvider {
    func getCurrentWeather(lat: Double, lon: Double) async throws -> OpenWeather.CurrentWeather? {
      let urlString = "https://api.openweathermap.org/data/2.5/weather?lat=\(lat)&lon=\(lon)&units=metric&dt=1200&appid=df766d0efdfecd9cf618f52dc2c16a02"
      if let url = URL(string: urlString) {
        let (data, _) = try await URLSession.shared.data(from: url)
        do {
          let decoder = JSONDecoder()
          let currentWeather = try decoder.decode(OpenWeather.CurrentWeather.self, from: data)
          return currentWeather
        } catch {
          print("Error decoding weather data: \(error)")
          return nil
        }
      } else {
        throw WeatherError.invalidURL
      }
    }
    
    func getForecast(lat: Double, lon: Double) async throws -> OpenWeather.Forecast? {
      let urlString = "https://api.openweathermap.org/data/2.5/forecast?lat=\(lat)&lon=\(lon)&units=metric&dt=1200&appid=df766d0efdfecd9cf618f52dc2c16a02"
      if let url = URL(string: urlString) {
        let (data, _) = try await URLSession.shared.data(from: url)
        do {
          let decoder = JSONDecoder()
          let currentWeather = try decoder.decode(OpenWeather.Forecast.self, from: data)
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
