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
  
  init(model: some LocationProtocol) {
    self.isFavorite = false
    self.name = model.name
    self.localNames = model.localNames
    self.lat = model.lat
    self.lon = model.lon
    self.country = model.country
    self.state = model.state
  }
}
