import SwiftUI
import SwiftData

@main
struct AlgonquinWeatherApp: App {

  private var geocodingService = OpenWeather.GeocodingProvider()
  
  var body: some Scene {
    WindowGroup {
      LocationWeatherListView()
        .environmentObject(GeocodingModel(geocoder: geocodingService))
    }
    .modelContainer(
      for: [
        Location.self,
        LocationCollection.self
      ]
    )
  }
}
