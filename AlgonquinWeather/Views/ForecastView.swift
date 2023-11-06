import SwiftUI

struct ForecastView: View {
  var location: Location
  
  var body: some View {
    Text( "\(location.name)")
      .font(.largeTitle)
    Text( "\(location.state ?? "")")
    Text( "\(location.country)")
  }
}
