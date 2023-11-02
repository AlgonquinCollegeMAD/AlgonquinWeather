import SwiftUI

struct LocationListView: View {
  @StateObject var model: LocationListViewModel = LocationListViewModel()
  
  var body: some View {
    NavigationStack {
      VStack {
        HStack {
          SearchBoxView(model: model)
          SearchButton(model: model)
        }
        .padding()
        Spacer()
      }
      .navigationTitle("Weather")
    }
  }
}

/** Search Box */
fileprivate struct SearchBoxView: View {
  @ObservedObject var model: LocationListViewModel
  
  var body: some View {
    HStack {
      Image(systemName: "magnifyingglass")
        .foregroundColor(.gray)
      
      TextField("Search", text: $model.searchString)
        .textFieldStyle(PlainTextFieldStyle())
        .font(.system(size: 14, weight: Font.Weight.regular , design: .rounded))
        .foregroundColor(.gray)
      
      if !model.searchString.isEmpty {
        Button(action: {
          model.clearSearch()
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
  @ObservedObject var model: LocationListViewModel
  
  var body: some View {
    Button(action: {
      model.search()
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

#Preview {
  LocationListView()
}

#Preview {
  SearchButton(model: .init())
}

#Preview {
  SearchBoxView(model: .init())
}
