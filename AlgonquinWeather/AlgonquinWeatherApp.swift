import SwiftUI
import SwiftData

@main
struct AlgonquinWeatherApp: App {

  private var geocodingProvider = OpenWeather.GeocodingProvider()
  
  var body: some Scene {
    WindowGroup {
      LocationWeatherListView()
        .environmentObject(GeocodingModel(geocoder: geocodingProvider))
    }
    .modelContainer(
      for: [
        LocationData.self
      ]
    )
  }
}
