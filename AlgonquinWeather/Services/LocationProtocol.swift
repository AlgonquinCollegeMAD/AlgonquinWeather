protocol LocationProtocol: Codable, Hashable {
  var name: String { get }
  var localNames: [String: String]? { get }
  var lat: Double { get }
  var lon: Double { get }
  var country: String { get }
  var state: String? { get }
}
