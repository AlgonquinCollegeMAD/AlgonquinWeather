import SwiftUI

class GeocodingModel: ObservableObject {
  @Published private(set) var locations: [LocationData] = []
  let geocoder: TheWeatherAPI.GeocodingProvider
  
  init(geocoder: TheWeatherAPI.GeocodingProvider) {
    self.geocoder = geocoder
  }
  
  func getLocations(search searchString: String) async throws {
    do {
      let locations = try await geocoder.getLocations(search: searchString)
      DispatchQueue.main.async {
        self.locations = locations.map({ location in
          LocationData(model: location)
        })
      }
    } catch {
      // Handle the error here
    }
  }
}
