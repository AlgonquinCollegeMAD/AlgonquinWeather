import SwiftUI
import SwiftData

struct LocalionColletionView: View {
  @Query var items: [LocationItem]
  @State private var showSearchLocationSheet = false
  
  var body: some View {
    NavigationView {
      List(items, id: \.id) { item in
        Text( "\(item.name), \(item.state ?? ""), \(item.country)")
      }
      .navigationTitle("Weather")
      .navigationBarItems(trailing: Button(action: {
        self.showSearchLocationSheet = true
      }) {
        Image(systemName: "plus")
      })
      .sheet(isPresented: $showSearchLocationSheet) {
        SearchLocationView()
      }
    }
  }
}
