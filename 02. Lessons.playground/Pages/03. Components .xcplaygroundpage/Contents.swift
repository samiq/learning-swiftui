
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
            VStack{
                HStack{
                    VStack(alignment: .leading){
                        Text("UI Design")
                            .font(.title)
                            .fontWeight(.semibold)
                            .foregroundColor(.white)
                        Text("Certificate")
                            .foregroundColor(Colors.accent)
                    }
                    Spacer()
                    Image(uiImage:#imageLiteral(resourceName: "background.png"))
                        .resizable()
                        .frame(width: 40, height: 40)
                }
                .padding(.horizontal, 20)
                .padding(.top, 20)
                Spacer()
                Image(uiImage:#imageLiteral(resourceName: "Card1.png"))
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 300, height:110, alignment: .top)
            }
            .frame(width:340, height: 220)
            .background(Color.black)
            .cornerRadius(20)
            .shadow(radius: 20)
        }
    }
}

// Present the view controller in the Live View window
let vc = UIHostingController(rootView:ContentView())
PlaygroundPage.current.liveView = vc
