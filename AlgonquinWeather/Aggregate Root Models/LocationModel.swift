import SwiftUI

class LocationModel: ObservableObject {
  @Published private(set) var locations: [Location] = []
  let apiService: OpenWeatherAPIService
  
  init(apiService: OpenWeatherAPIService) {
    self.apiService = apiService
  }
  
  func getLocations(search searchString: String) async throws {
    do {
      let newLocations = try await apiService.getLocations(search: searchString)
      DispatchQueue.main.async {
        self.locations = newLocations
      }
    } catch {
      // Handle the error here
    }
  }
}
