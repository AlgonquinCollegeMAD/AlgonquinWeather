import SwiftUI

struct SettingsView: View {
  @EnvironmentObject var settings: SettingsModel
  var body: some View {
    NavigationStack {
      Form {
        Picker("Select Locale", selection: $settings.selectedLanguage) {
          ForEach(SettingsLanguage.allCases, id: \.self) { language in
            Text(language.name()).tag(language.locale().identifier)
          }
        }
        .pickerStyle(.menu)
      }
      .navigationTitle("Settings")
      .environment(\.locale, settings.selectedLanguage.locale())
    }
  }
}
