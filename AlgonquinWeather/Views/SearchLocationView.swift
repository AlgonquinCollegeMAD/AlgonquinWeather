import SwiftUI

fileprivate enum ViewState {
  case loading(String)
  case empty
  case idle([OpenWeather.LocationModel])
}

struct SearchLocationView: View {
  @State fileprivate var viewState: ViewState = .empty
  @Environment(\.dismiss) var dismiss
  
  var body: some View {
    NavigationStack {
      VStack {
        SearchView(viewState: $viewState)
          .padding()
        
        switch viewState {
          
        case .loading(let string):
          Spacer()
          ProgressView("Searching for \(string)")
          Spacer()
          
        case .empty:
          ContentUnavailableView {
            Text("No locations selected")
          } description: {
            Text("Try to search for the name of a city, or country")
          }
          
        case .idle(let array):
          LocationsView(locationModels: array)
        }
      }
      .navigationTitle("Search")
      .toolbar {
        ToolbarItem(placement: .cancellationAction) {
          Button("Cancel") {
            dismiss()
          }
        }
      }
    }
  }
}

/** Locations List */
fileprivate struct LocationsView: View {
  @Environment(\.modelContext) private var context
  @Environment(\.dismiss) private var dismiss
  var locationModels: [OpenWeather.LocationModel]
  
  var body: some View {
    List(locationModels, id:\.self) { locationModel in
      Text( "\(locationModel.name), \(locationModel.state ?? ""), \(locationModel.country)")
        .onTapGesture {
          let newLocation = Location(model: locationModel)
          context.insert(newLocation)
          do {
            try context.save()
            dismiss()
          }
          catch {
            print("Error saving new location item: \(error.localizedDescription)")
          }
        }
    }
    .listStyle(.plain)
  }
}


/** Search View */
fileprivate struct SearchView: View {
  @State var searchString = String()
  @Binding var viewState: ViewState
  
  var body: some View {
    HStack {
      SearchBoxView(searchString: $searchString, viewState: $viewState)
      SearchButtonView(searchString: $searchString, viewState: $viewState)
    }
  }
}

/** Search Box */
fileprivate struct SearchBoxView: View {
  @Binding var searchString: String
  @Binding var viewState: ViewState
  @EnvironmentObject private var model: GeocodingModel
  
  var body: some View {
    HStack {
      Image(systemName: "magnifyingglass")
        .foregroundColor(.gray)
      
      TextField("Search", text: $searchString)
        .textFieldStyle(PlainTextFieldStyle())
        .font(.system(size: 14, weight: Font.Weight.regular , design: .rounded))
        .foregroundColor(.primary)
        .onSubmit {
          Task {
            do {
              viewState = .loading(searchString)
              try await model.getLocations(search: searchString)
              viewState = .idle(model.locations)
            } catch {
              print(error.localizedDescription)
            }
          }
        }
      
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
fileprivate struct SearchButtonView: View {
  @Binding var searchString: String
  @Binding var viewState: ViewState
  @EnvironmentObject private var model: GeocodingModel
  
  var body: some View {
    Button(action: {
      Task {
        do {
          viewState = .loading(searchString)
          try await model.getLocations(search: searchString)
          viewState = .idle(model.locations)
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
