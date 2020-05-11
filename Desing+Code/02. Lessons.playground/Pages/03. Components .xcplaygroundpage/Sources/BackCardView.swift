import SwiftUI

public struct BackCardView: View {

    var color : Color
    
    public init(_ color : Color = Color.blue){
        self.color = color
    }
    
    public var body : some View {
        VStack {
            Spacer()
        }
        .frame(width: 340, height: 220)
        .background(color)
        .cornerRadius(20)
        .shadow(radius: 20)    
    }
}
