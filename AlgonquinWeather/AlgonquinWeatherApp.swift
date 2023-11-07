import SwiftUI
import SwiftData

@main
struct AlgonquinWeatherApp: App {

  private var locationAPIService = OpenWeatherAPIService()
  
  var body: some Scene {
    WindowGroup {
      LocalionColletionView()
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
