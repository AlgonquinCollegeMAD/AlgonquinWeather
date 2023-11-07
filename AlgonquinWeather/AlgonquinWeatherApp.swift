import SwiftUI
import SwiftData

@main
struct AlgonquinWeatherApp: App {

  private var apiService = OpenWeatherAPIService()
  
  var body: some Scene {
    WindowGroup {
      LocalionColletionView()
        .environmentObject(LocationModel(apiService: apiService))
    }
    .modelContainer(
      for: [
        LocationItem.self,
        LocationCollection.self
      ]
    )
  }
}
