import SwiftUI

class WeatherModel: ObservableObject {
  @Published private(set) var currentWeather: OpenWeather.CurrentWeather?
  let weatherService: OpenWeather.WeatherService
  
  init(weatherService: OpenWeather.WeatherService) {
    self.weatherService = weatherService
  }
  
  func getCurrentWeather(location: LocationData) async throws {
    do {
      let currentWeather = try await weatherService.getCurrentWeather(location: location.model())
      DispatchQueue.main.async {
        self.currentWeather = currentWeather
      }
    } catch {
      // Handle error here
    }
  }
}
