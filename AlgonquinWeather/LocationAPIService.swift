import Foundation

class LocationAPIService: ObservableObject, Observable {
  @Published private(set) var locations: [Location] = []
  
  func getLocations(search searchString: String) -> [Location] {
    if let path = Bundle.main.path(forResource: "direct-geocoding-response", ofType: "json") {
      do {
        let data = try Data(contentsOf: URL(fileURLWithPath: path))
        if let decodedData = decodeData(from: data) {
          return decodedData
        }
      } catch {
        print("Error loading JSON: \(error)")
      }
    }
    return []
  }
  
  /** Private functions **/
  private func decodeData(from json: Data) -> [Location]? {
    do {
      let decoder = JSONDecoder()
      let data = try decoder.decode([Location].self, from: json)
      return data
    } catch {
      print("Error decoding weather data: \(error)")
      return nil
    }
  }
}
