import SwiftUI

struct SplashView: View {
  @State private var isImageScaled = false
  @Binding var animationCompleted: Bool
  
  init(animationCompleted: Binding<Bool>) {
    _animationCompleted = animationCompleted
  }
  
  var body: some View {
    VStack {
      Image("logo")
        .resizable()
        .aspectRatio(contentMode: .fit)
        .frame(width: isImageScaled ? UIScreen.main.bounds.width * 18 : 90,
               height: isImageScaled ? UIScreen.main.bounds.height * 18 : 90)
        .onAppear {
          DispatchQueue.main.asyncAfter(deadline: .now() + 2.0) {
            withAnimation(Animation.easeInOut(duration: 3.0)) {
              isImageScaled = true
            }
            DispatchQueue.main.asyncAfter(deadline: .now() + 3.0) {
              animationCompleted = true
            }
          }
        }
      
      Text("Algo Weather")
        .font(.largeTitle)
        .foregroundColor(.black)
    }
  }
}
