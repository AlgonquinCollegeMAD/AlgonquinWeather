import SwiftUI

class Model: ObservableObject {
  @Published private(set) var locations: [Location] = []
  let locationAPIService: LocationAPIService
  
  init(locationAPIService: LocationAPIService) {
    self.locationAPIService = locationAPIService
  }
  
  func getLocations(search searchString: String) {
    locations = locationAPIService.getLocations(search: searchString)
  }                        
}
