import Foundation
import SwiftData

@Model
class LocationItem {
  let id: Int
  let name: String
  let localNames: [String: String]?
  let lat: Double
  let lon: Double
  let country: String
  let state: String?
  var isFavorite = false
  
  init(location: Location) {
    self.id = location.id
    self.name = location.name
    self.localNames = location.localNames
    self.lat = location.lat
    self.lon = location.lon
    self.country = location.country
    self.state = location.state
    self.isFavorite = false
  }
}

@Model
class LocationCollection {
  var id: Int
  @Relationship(deleteRule: .cascade) var items: [LocationItem] = []
  
  init(id: Int, items: [LocationItem]) {
    self.id = id
    self.items = items
  }
}
