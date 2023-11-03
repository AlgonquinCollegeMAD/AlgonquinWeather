import SwiftUI

@main
struct AlgonquinWeatherApp: App {

  private var locationAPIService = LocationService()
  
  var body: some Scene {
    WindowGroup {
      LocationListView()
        .environmentObject(LocationModel(locationAPIService: locationAPIService))
    }
  }
}
