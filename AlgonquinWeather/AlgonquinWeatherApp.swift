import SwiftUI
import SwiftData

@main
struct AlgonquinWeatherApp: App {
  @State private var animationCompleted = false
  private var geocodingProvider = TheWeatherAPI.GeocodingProvider()
  @ObservedObject var settings = SettingsModel()
  
  var body: some Scene {
    WindowGroup {
      if !animationCompleted {
        SplashView(animationCompleted: $animationCompleted)
      } else {
        TabView {
          Group {
            LocationWeatherListView()
              .accentColor(Color.greenAlgo)
              .tabItem {
                Image(systemName: "list.bullet.rectangle")
                  .renderingMode(.template)
                Text("List")
              }
            
            SettingsView()
              .accentColor(Color.greenAlgo)
              .tabItem {
                Image(systemName: "gearshape")
                  .renderingMode(.template)
                Text("Settings")
              }
          }
          .toolbarBackground(Color.greenAlgo, for: .tabBar)
          .toolbarBackground(.visible, for: .tabBar)
        }
        .accentColor(.white)
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
    }
    .modelContainer(
      for: [
        LocationData.self
      ]
    )
  }
}
