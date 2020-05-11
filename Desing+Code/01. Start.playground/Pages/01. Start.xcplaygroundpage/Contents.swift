import SwiftUI
import PlaygroundSupport

struct ContentView : View {
    var body : some View {
        Text("Hello world")
    }
}

// Present the view controller in the Live View window
let vc = UIHostingController(rootView:ContentView())
PlaygroundPage.current.liveView = vc
