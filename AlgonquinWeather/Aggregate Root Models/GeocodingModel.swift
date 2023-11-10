import SwiftUI

class GeocodingModel: ObservableObject {
  @Published private(set) var locations: [OpenWeather.Location] = []
  let geocoder: OpenWeather.GeocodingProvider
  
  init(geocoder: OpenWeather.GeocodingProvider) {
    self.geocoder = geocoder
  }
  
  func getLocations(search searchString: String) async throws {
    do {
      let newLocations = try await geocoder.getLocations(search: searchString)
      DispatchQueue.main.async {
        self.locations = newLocations
      }
    } catch {
      // Handle the error here
    }
  }
}
