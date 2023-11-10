import SwiftUI

class WeatherModel: ObservableObject {
  @Published private(set) var currentWeather: CurrentWeatherData?
  @Published private(set) var forecast: ForecastData?
  
  let weatherProvider: OpenWeather.WeatherProvider
  
  init(weatherProvider: OpenWeather.WeatherProvider) {
    self.weatherProvider = weatherProvider
  }
  
  func updateCurrentWeather(location: LocationData) async throws {
    do {
      if let currentWeather = try await weatherProvider.getCurrentWeather(lat: location.lat, lon: location.lon) {
        DispatchQueue.main.async {
          self.currentWeather = CurrentWeatherData(model: currentWeather)
        }
      }
    } catch {
      // Handle error here
    }
  }
  
  func updateForecast(location: LocationData) async throws {
    do {
      if let forecast = try await weatherProvider.getForecast(lat: location.lat, lon: location.lon) {
        DispatchQueue.main.async {
          self.forecast = ForecastData(model: forecast)
        }
      }
    } catch {
      
    }
  }
}
