import Foundation

extension OpenWeather {
  class WeatherService {
    func getCurrentWeather(location: LocationModel) async throws -> CurrentWeatherModel? {
      let urlString = "https://api.openweathermap.org/data/2.5/weather?lat=\(location.lat)&lon=\(location.lon)&units=metric&&dt=1200&appid=df766d0efdfecd9cf618f52dc2c16a02"
      if let url = URL(string: urlString) {
        let (data, _) = try await URLSession.shared.data(from: url)
        return decodeData(from: data)
      } else {
        throw WeatherError.invalidURL
      }
    }
    
    private func decodeData(from json: Data) -> CurrentWeatherModel? {
      do {
        let decoder = JSONDecoder()
        let data = try decoder.decode(CurrentWeatherModel.self, from: json)
        return data
      } catch {
        print("Error decoding weather data: \(error)")
        return nil
      }
    }
  }
}
