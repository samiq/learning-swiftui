import SwiftUI

public struct CircleImageView: View {
    
    public init(){}
    
    public var body : some View {       
        Image(uiImage:#imageLiteral(resourceName:"turtlerock.jpeg"))
        . clipShape(Circle())
        .overlay(Circle().stroke(Color.white, lineWidth: 4))
        .shadow(radius: 10)
        
    }
}
