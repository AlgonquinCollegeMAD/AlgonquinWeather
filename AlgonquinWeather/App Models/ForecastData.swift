import Foundation
import SwiftData

class ForecastData: Identifiable {
  var list: [Int : Double] = [:]
  
  init(model: OpenWeather.Forecast) {
    model.list.forEach { item in
      self.list[item.dt] = item.main.temp
    }
  }
}
