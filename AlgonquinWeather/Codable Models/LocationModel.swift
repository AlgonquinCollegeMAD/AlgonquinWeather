import Foundation

struct LocationModel: Codable, Hashable {
  let name: String
  let localNames: [String: String]?
  let lat: Double
  let lon: Double
  let country: String
  let state: String?
}
