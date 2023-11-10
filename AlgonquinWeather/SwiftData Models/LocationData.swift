import Foundation
import SwiftData

@Model
class LocationData {
  let name: String
  let localNames: [String: String]?
  let lat: Double
  let lon: Double
  let country: String
  let state: String?
  var isFavorite: Bool
  
  init(model: OpenWeather.Location) {
    self.isFavorite = false
    self.name = model.name
    self.localNames = model.localNames
    self.lat = model.lat
    self.lon = model.lon
    self.country = model.country
    self.state = model.state
  }
  
  func model() -> OpenWeather.Location {
    OpenWeather.Location(
      name: self.name,
      localNames: self.localNames,
      lat: self.lat,
      lon: self.lon,
      country: self.country,
      state: self.state
    )
  }
}

@Model
class LocationCollection {
  var id: Int
  @Relationship(deleteRule: .cascade) var items: [LocationData] = []
  
  init(id: Int, items: [LocationData]) {
    self.id = id
    self.items = items
  }
}
