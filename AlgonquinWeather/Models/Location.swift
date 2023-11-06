import Foundation

struct Location: Decodable, Hashable, Identifiable {
  var id: Int {
    UUID().hashValue
  }
  let name: String
  let localNames: [String: String]?
  let lat: Double
  let lon: Double
  let country: String
  let state: String?
}
