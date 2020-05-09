
import SwiftUI
import PlaygroundSupport

struct ContentView : View {
    
    var body : some View {
        ZStack {
            // Background Card
            VStack {
                Spacer()
            }
            .frame(width: 300, height: 220)
            .background(Color.blue)
            .cornerRadius(20)
            .shadow(radius: 20)
            .offset(x:0, y:-20)
            
            // Card
            CardView()
        }
    }
}

// Present the view controller in the Live View window
let vc = UIHostingController(rootView:ContentView())
PlaygroundPage.current.liveView = vc
