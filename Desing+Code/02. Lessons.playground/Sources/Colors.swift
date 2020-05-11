import SwiftUI
import UIKit

public struct Colors {
    // Color composition generated using https://www.uicolor.io/
    // to translate from HEX from colorset to UIColor.
    
    // #5ECDFA
    public static var accent = Color(Color.RGBColorSpace.sRGB, red:0.37, green:0.80, blue:0.98, opacity: 1.0)
    
    // light: #ffffff dark: #000000
    public static var background1 = Color(UIColor(
        light: UIColor(red: 1.00, green: 1.00, blue: 1.00, alpha: 1.00),
        dark: UIColor(red: 0.00, green: 0.00, blue: 0.00, alpha: 1.00)
    ))
    
    // light: #D6D7E3 dark: r:0.067 g:0.067 b:0.067 = #111111
    public static var background2 = Color(UIColor(
        light: UIColor(red:0.84, green:0.84, blue:0.89, alpha:1.00),
        dark: UIColor(red:0.067, green:0.067, blue:0.067, alpha: 1.00)
    ))
    
    // light: #ffffff dark: #222222
    public static var background3 = Color(UIColor(
        light: UIColor(red: 1.00, green: 1.00, blue: 1.00, alpha: 1.00),
        dark: UIColor(red:0.13, green:0.13, blue:0.13, alpha:1.00)
    ))
    
    // #6A55FC
    public static var card1 = Color(Color.RGBColorSpace.sRGB, red:0.42, green:0.33, blue:0.99, opacity: 1)
    
    // #14BEFD
    public static var card2 = Color(Color.RGBColorSpace.sRGB, red:0.08, green:0.75, blue:0.99, opacity: 1)
    
    // #F73757
    public static var card3 = Color(Color.RGBColorSpace.sRGB, red:0.97, green:0.22, blue:0.34, opacity: 1)
    
    // light: #18204F dark: #00FFE5
    public static var card4 = Color(UIColor(
        light: UIColor(red:0.09, green:0.13, blue:0.31, alpha: 1.0),
        dark: UIColor(red:0.00, green:1.00, blue:0.90, alpha:1.00)
    ))
    
    // light: #000000 dark: #2357DD
    public static var card5 = Color(UIColor(
        light: UIColor(red: 0.00, green: 0.00, blue: 0.00, alpha: 1.00),
        dark: UIColor(red:0.14, green:0.34, blue:0.87, alpha:1.00)
    ))
    
    // light: #18204F dark: #000000
    public static var primary = Color(UIColor(
        light: UIColor(red:0.09, green:0.13, blue:0.31, alpha:1.00),
        dark: UIColor(red: 0.00, green: 0.00, blue: 0.00, alpha: 1.00)
    ))
    
    // light: #333333 dark: #CCCCCC
    public static var secondary = Color(UIColor(
        light: UIColor(red:0.20, green:0.20, blue:0.20, alpha:1.00),
        dark: UIColor(red:0.80, green:0.80, blue:0.80, alpha: 1.00)
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
