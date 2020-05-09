import SwiftUI
import PlaygroundSupport

struct ContentView : View {
    var body : some View {
        ZStack {
            TitleView()
            
            BackCardView(Colors.card4)
                .offset(x:0, y:-40)
                .scaleEffect(0.90)
                .rotationEffect(.degrees(10))
                .rotation3DEffect(.degrees(10),
                                  axis: (x: 10.0, y: 0, z: 0))
                .blendMode(.hardLight)
            
            BackCardView(Colors.card3)
                .offset(x:0, y:-20)
                .scaleEffect(0.95)
                .rotationEffect(.degrees(5))
                .rotation3DEffect(.degrees(5),
                                  axis: (x: 10.0, y: 0, z: 0))
                .blendMode(.hardLight)
            
            CardView()
                .blendMode(.hardLight)
            
            BottomCardView()
        }
    }
}

// Present the view controller in the Live View window
let vc = UIHostingController(rootView:ContentView())
PlaygroundPage.current.liveView = vc
 
