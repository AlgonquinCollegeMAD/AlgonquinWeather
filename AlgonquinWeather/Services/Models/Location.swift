extension OpenWeather {
  struct Location: LocationProtocol {
    let name: String
    let localNames: [String: String]?
    let lat: Double
    let lon: Double
    let country: String
    let state: String?
  }
}

extension TheWeatherAPI {
  struct Location: LocationProtocol {
    let name: String
    let localNames: [String: String]?
    let lat: Double
    let lon: Double
    let country: String
    let region: String?
    let state: String?
    
    init(
      name: String,
      localNames: [String: String]?,
      lat: Double,
      lon: Double,
      country: String,
      region: String?,
      state: String?
    ) {
      self.name = name
      self.localNames = localNames
      self.lat = lat
      self.lon = lon
      self.country = country
      self.region = state
      self.state = state
    }
  }
}
