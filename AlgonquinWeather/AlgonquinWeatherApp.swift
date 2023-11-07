import SwiftUI
import SwiftData

@main
struct AlgonquinWeatherApp: App {

  private var apiService = OpenWeatherAPIService()
  
  var body: some Scene {
    WindowGroup {
      LocationWeatherListView()
        .environmentObject(GeocodingModel(apiService: apiService))
    }
    .modelContainer(
      for: [
        Location.self,
        LocationCollection.self
      ]
    )
  }
}
