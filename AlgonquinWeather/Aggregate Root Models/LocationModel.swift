import SwiftUI

class LocationModel: ObservableObject {
  @Published private(set) var locations: [Location] = []
  let locationAPIService: LocationService
  
  init(locationAPIService: LocationService) {
    self.locationAPIService = locationAPIService
  }
  
  func getLocations(search searchString: String) async throws {
      do {
          let newLocations = try await locationAPIService.getLocations(search: searchString)
          DispatchQueue.main.async {
              self.locations = newLocations
          }
      } catch {
          // Handle the error here
      }
  }
}
