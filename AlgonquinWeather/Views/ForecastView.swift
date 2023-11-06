import SwiftUI

struct ForecastView: View {
  var location: Location
  
  var body: some View {
    NavigationStack {
      VStack {
        Text( "\(location.name)")
          .font(.largeTitle)
        Text( "\(location.state ?? "")")
        Text( "\(location.country)")
      }
      .toolbar {
        Button("Add") {
          print("Adds \(location.name) to list.")
        }
      }
      .padding()
    }
  }
}
