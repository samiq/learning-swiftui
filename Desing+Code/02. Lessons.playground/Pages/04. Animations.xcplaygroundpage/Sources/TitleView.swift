import SwiftUI

public struct TitleView: View {

    public init(){}
    
    public var body : some View {
        VStack {
            HStack{
                Text("Certificates")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                Spacer()
            }
            .padding()
            Image(uiImage:#imageLiteral(resourceName:"Background1"))
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 375, height:271, alignment: .top)
            Spacer()
        }
    }
}
