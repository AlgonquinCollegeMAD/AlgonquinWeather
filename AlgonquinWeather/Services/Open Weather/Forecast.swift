import Foundation

extension OpenWeather {
  struct Forecast: Codable {
    let cod: String
    let message: Int
    let cnt: Int
    let list: [WeatherInfo]
    let city: CityInfo
  }
  
  struct WeatherInfo: Codable {
    let dt: Int
    let main: MainInfo
    let weather: [WeatherDetail]
    let clouds: CloudsInfo
    let wind: WindInfo
    let visibility: Int
    let pop: Double
    let rain: RainInfo?
    let sys: SysInfo
    let dt_txt: String
  }
  
  struct MainInfo: Codable {
    let temp: Double
    let feels_like: Double
    let temp_min: Double
    let temp_max: Double
    let pressure: Int
    let sea_level: Int
    let grnd_level: Int
    let humidity: Int
    let temp_kf: Double
  }
  
  struct WeatherDetail: Codable {
    let id: Int
    let main: String
    let description: String
    let icon: String
  }
  
  struct CloudsInfo: Codable {
    let all: Int
  }
  
  struct WindInfo: Codable {
    let speed: Double
    let deg: Int
    let gust: Double
  }
  
  struct RainInfo: Codable {
    let threeHours: Double
    
    enum CodingKeys: String, CodingKey {
      case threeHours = "3h"
    }
  }
  
  struct SysInfo: Codable {
    let pod: String
  }
  
  struct CityInfo: Codable {
    let id: Int
    let name: String
    let coord: CoordInfo
    let country: String
    let population: Int
    let timezone: Int
    let sunrise: Int
    let sunset: Int
  }
  
  struct CoordInfo: Codable {
    let lat: Double
    let lon: Double
  }
  
}
