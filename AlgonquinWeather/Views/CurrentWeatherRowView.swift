import SwiftUI
import SwiftData

struct CurrentWeatherRowView: View {
  var location: Location
  @StateObject var weatherModel: WeatherModel = WeatherModel(apiService: OpenWeatherAPIService())
  
  var body: some View {
    if let currentWeather = weatherModel.currentWeather {
      HStack {
        Text(String(format: "%.2f", currentWeather.main.temp) + "°C")
        Text(currentWeather.name)
        Spacer()
      }
    } else {
      ProgressView()
        .task {
          do {
            try await weatherModel.getCurrentWeather(location: location)
          } catch {
            // handle error
          }
        }
    }
  }
}
