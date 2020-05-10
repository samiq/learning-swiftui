import SwiftUI

public struct BottomCardView: View {

    public init(){}
    
    public var body : some View {
        VStack(spacing:20) {
            Rectangle()
                .frame(width: 40, height: 3)
                .cornerRadius(3)
                .opacity(0.1)
            
            Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque sed imperdiet turpis. Quisque nec purus sapien.")
                .multilineTextAlignment(.center)
                .font(.subheadline)
                .lineSpacing(4)
            Spacer()
        }
        .padding(.top, 8)
        .padding(.horizontal,20)
        .frame(maxWidth:.infinity)
        .background(Color.white)
        .cornerRadius(30)
        .shadow(radius: 20)
        .offset(x:0, y: 500)

    }
}
