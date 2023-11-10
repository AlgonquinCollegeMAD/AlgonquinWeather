import SwiftUI
import SwiftData

struct CurrentWeatherRowView: View {
  var location: LocationData
  @StateObject var weatherModel: WeatherModel = WeatherModel(weatherProvider: OpenWeather.WeatherProvider())
  
  var body: some View {
    if let currentWeather = weatherModel.currentWeather {
      VStack {
        HStack {
          AsyncImage(url: currentWeather.iconURL) { phase in
            if let image = phase.image {
              image
            } else {
              ProgressView()
                .padding()
            }
          }
          Text(String(format: "%.2f", currentWeather.temp) + "°C")
          Text(currentWeather.name)
          if let wd = currentWeather.weatherDescription {
            Text(wd)
          }
          Spacer()
        }
      }
    } else {
      HStack {
        Spacer()
        ProgressView()
          .task {
            do {
              try await weatherModel.updateCurrentWeather(location: location)
              try await weatherModel.updateForecast(location: location)
            } catch {
              // handle error
            }
          }
        Spacer()
      }
    }
  }
}
