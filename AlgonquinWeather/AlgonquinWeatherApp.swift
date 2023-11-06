import SwiftUI
import SwiftData

@main
struct AlgonquinWeatherApp: App {

  private var locationAPIService = LocationService()
  
  var body: some Scene {
    WindowGroup {
      SearchLocationView()
        .environmentObject(LocationModel(locationAPIService: locationAPIService))
    }
    .modelContainer(
      for: [
        LocationItem.self,
        LocationCollection.self
      ]
    )
  }
}
