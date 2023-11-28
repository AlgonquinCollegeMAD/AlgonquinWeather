import SwiftUI

enum SettingsLanguage: String, CaseIterable {
  case english = "en"
  case portuguese = "pt-BR"
  
  func name() -> String {
    switch self {
    case .english: "English"
    case .portuguese: "Portuguese"
    }
  }
  
  func locale() -> Locale {
    switch self {
    case .english: Locale(identifier: "en")
    case .portuguese: Locale(identifier: "pt-BR")
    }
  }
}

class SettingsModel: ObservableObject {
  @Published var selectedLanguage: SettingsLanguage = .portuguese {
    didSet {
      UserDefaults.standard.set([selectedLanguage.locale().identifier], forKey: "LocaleIdentifier")
      UserDefaults.standard.synchronize()
    }
  }
}
