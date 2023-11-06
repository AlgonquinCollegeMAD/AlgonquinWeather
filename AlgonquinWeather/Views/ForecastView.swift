import SwiftUI

struct ForecastView: View {
  var location: Location
  @Environment(\.modelContext) private var context
  
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
          let newLocationItem = LocationItem(location: location)
          context.insert(newLocationItem)
          
          do {
            try context.save()
          }
          catch {
            print("Error saving new location item: \(error.localizedDescription)")
          }
        }
      }
      .padding()
    }
  }
}
