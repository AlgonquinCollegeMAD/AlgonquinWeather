import SwiftUI
import SwiftData

struct LocationWeatherListView: View {
  @Query var locations: [LocationData]
  @State private var showSearchLocationSheet = false
  @EnvironmentObject var settings: SettingsModel
  
  var body: some View {
    NavigationView {
      List(locations, id: \.id) { location in
        CurrentWeatherRowView(location: location)
      }
      .navigationTitle("Weather")
      .toolbar{
        ToolbarItem {
          Button("Add") {
            self.showSearchLocationSheet = true
          }
        }
      }
      .sheet(isPresented: $showSearchLocationSheet) {
        SearchLocationView()
      }
    }
    .environment(\.locale, settings.selectedLanguage.locale())
  }
}
