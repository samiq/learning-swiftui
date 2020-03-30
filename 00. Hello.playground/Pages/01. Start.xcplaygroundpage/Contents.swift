import SwiftUI
import PlaygroundSupport

struct ContentView : View {
    var body : some View {
        VStack {
            Image(uiImage:#imageLiteral(resourceName: "Logo.png"))
                .resizable()
                .frame(width: 40, height: 40)
            Text("Hello world")
                .foregroundColor(Colors.accent)            
        }
        .padding(16)
        .background(Colors.background)
    }
}

// Present the view controller in the Live View window
let vc = UIHostingController(rootView:ContentView())
PlaygroundPage.current.liveView = vc
