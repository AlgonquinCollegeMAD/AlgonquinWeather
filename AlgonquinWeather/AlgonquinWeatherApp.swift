import SwiftUI

@main
struct AlgonquinWeatherApp: App {

  private var locationAPIService = LocationAPIService()
  
  var body: some Scene {
    WindowGroup {
      LocationListView()
        .environmentObject(Model(locationAPIService: locationAPIService))
    }
  }
}
