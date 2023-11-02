import SwiftUI

class LocationListViewModel: ObservableObject {
  @Published private(set) var locations = []
  @Published var searchString = String()
  
  func clearSearch() {
    searchString = String()
  }
  
  func search() {
    print("Searching for: \(searchString)")
  }
}
