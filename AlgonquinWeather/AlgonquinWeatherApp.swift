import SwiftUI
import SwiftData

@main
struct AlgonquinWeatherApp: App {
  
  private var geocodingProvider = TheWeatherAPI.GeocodingProvider()
  @ObservedObject var settings = SettingsModel()
  
  var body: some Scene {
    WindowGroup {
      TabView {
        
        LocationWeatherListView()
          .tabItem {
            Image(systemName: "list.bullet.rectangle")
            Text("List")
          }
        
        SettingsView()
          .tabItem {
            Image(systemName: "gearshape")
            Text("Settings")
          }
      }
      .environmentObject(GeocodingModel(geocoder: geocodingProvider))
      .environmentObject(settings)
      .environment(\.locale, settings.selectedLanguage.locale())
      .onAppear {
        if let storedLocales = UserDefaults.standard.stringArray(forKey: "LocaleIdentifier"), let storedLocaleIdentifier = storedLocales.first {
        switch storedLocaleIdentifier {
          case "en":
            settings.selectedLanguage = .english
          case "pt-BR":
            settings.selectedLanguage = .portuguese
          default:
            settings.selectedLanguage = .english
          }
        }
      }
    }
    .modelContainer(
      for: [
        LocationData.self
      ]
    )
  }
}
