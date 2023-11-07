import SwiftUI

class WeatherModel: ObservableObject {
  @Published private(set) var currentWeather: CurrentWeatherModel?
  let apiService: OpenWeatherAPIService
  
  init(apiService: OpenWeatherAPIService) {
    self.apiService = apiService
  }
  
  func getCurrentWeather(location: Location) async throws {
    do {
      let currentWeather = try await apiService.getCurrentWeather(location: location.model())
      DispatchQueue.main.async {
        self.currentWeather = currentWeather
      }
    } catch {
      // Handle error here
    }
  }
}
