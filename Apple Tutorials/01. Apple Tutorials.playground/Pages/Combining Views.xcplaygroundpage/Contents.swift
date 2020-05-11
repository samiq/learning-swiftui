
import SwiftUI
import PlaygroundSupport

struct ContentView : View {
    var body : some View {
        VStack{
            MapView()
                .frame(height:300)
            CircleImageView()
                .offset(y:-130)
                .padding(.bottom, -130)
            
            VStack(alignment:.leading){
                Text("Turtle Rock")
                    .font(.title)
                HStack{
                    Text("Joshua Tree National Park")
                    .font(.subheadline)
                    Spacer()
                    Text("California")
                    .font(.subheadline)
                }        
            }
            .padding()
            Spacer()
        }
    }
}

// Present the view controller in the Live View window
let vc = UIHostingController(rootView:ContentView())
PlaygroundPage.current.liveView = vc
