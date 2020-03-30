import SwiftUI
import UIKit

public struct Colors {
    // Color composition generated using https://www.uicolor.io/
    // to translate from HEX from colorset to UIColor.
    
    // Example on how to create a SwiftUI Color using RGB
    public static var accent = Color(Color.RGBColorSpace.sRGB, red:0.00, green:0.00, blue:1.00, opacity: 1.0)
    
    // Example on how to create a SwiftUI Color from a dynamic UIColor using RGB and 2 colors, one for light and one for dark themes.
    public static var background = Color(UIColor(
        light: UIColor(red: 0.90, green: 0.90, blue: 0.90, alpha: 1.00),
        dark: UIColor(red: 0.00, green: 0.00, blue: 0.00, alpha: 1.00)
    ))
}

extension UIColor {

    // MARK: - Specify Dark and Light colors
    // taken from https://stackoverflow.com/questions/57409700/comparing-two-uicolor-dynamicprovider-ios13-returns-false

    convenience init(light: UIColor, dark: UIColor) {

        self.init(dynamicProvider: { (traits) in
            switch traits.userInterfaceStyle {
                case .dark: return dark
                case .unspecified, .light: return light
                @unknown default: return light
            }
        })
    }
}
