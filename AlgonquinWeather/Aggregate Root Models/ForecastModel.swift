import SwiftUI

class ForecastModel: ObservableObject {
  @Published private(set) var forecast: Forecast?
  let apiService: OpenWeatherAPIService
  
  init(apiService: OpenWeatherAPIService) {
    self.apiService = apiService
  }
  
  func getForecast(location: Location) async throws {
    do {
      let forecast = try await apiService.getForecast(location: location)
      DispatchQueue.main.async {
        self.forecast = forecast
      }
    } catch {
      // Handle error here
    }
  }
}
