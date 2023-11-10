import Foundation
import SwiftUI
import SwiftData

class CurrentWeatherData {
  var name: String
  var temp: Double
  var iconURL: URL?
  var weatherDescription: String?
  
  init(model: OpenWeather.CurrentWeather) {
    self.name = model.name
    self.temp = model.main.temp
    
    if let iconCode = model.weather.first?.icon, let url = URL(string: "https://openweathermap.org/img/wn/\(iconCode)@2x.png") {
      self.iconURL = url
    }
    
    self.weatherDescription = model.weather.first?.description
  }
}
