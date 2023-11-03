import SwiftUI

struct LocationListView: View {
  @State var searchString = String()
  @EnvironmentObject private var model: LocationModel
  
  var body: some View {
    NavigationStack {
      VStack {
        HStack {
          SearchBoxView(searchString: $searchString)
          SearchButton(searchString: $searchString)
        }
        .padding()
        LocationsView(searchString: $searchString)
        
      }
      .navigationTitle("Weather")
    }
  }
}

/** Locations List */
fileprivate struct LocationsView: View {
  @Binding var searchString: String
  @EnvironmentObject private var model: LocationModel
  
  var body: some View {
    List(model.locations, id:\.self) { location in
      Text( "\(location.name), \(location.state ?? ""), \(location.country)")
    }
    .listStyle(.plain)
  }
}

/** Search Box */
fileprivate struct SearchBoxView: View {
  @Binding var searchString: String
  @EnvironmentObject private var model: LocationModel
  
  var body: some View {
    HStack {
      Image(systemName: "magnifyingglass")
        .foregroundColor(.gray)
      
      TextField("Search", text: $searchString)
        .textFieldStyle(PlainTextFieldStyle())
        .font(.system(size: 14, weight: Font.Weight.regular , design: .rounded))
        .foregroundColor(.primary)
      
      if !searchString.isEmpty {
        Button(action: {
          searchString = String()
        }) {
          Image(systemName: "xmark.circle.fill")
            .foregroundColor(.gray)
        }
        .buttonStyle(PlainButtonStyle())
      }
    }
    .padding(.all, 6)
    .background(
      Capsule()
        .foregroundColor(.gray.opacity(0.2))
    )
  }
}

/** Search Button */
fileprivate struct SearchButton: View {
  @Binding var searchString: String
  @EnvironmentObject private var model: LocationModel
  
  var body: some View {
    Button(action: {
      Task {
        do {
          try await model.getLocations(search: searchString)
        } catch {
          print(error.localizedDescription)
        }
      }
    }, label: {
      Image(systemName: "location.magnifyingglass")
    })
    .foregroundColor(.white)
    .padding(8.0)
    .padding(.horizontal, 16)
    .background(
      Capsule()
        .foregroundStyle(.blue)
    )
  }
}
