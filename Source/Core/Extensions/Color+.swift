//
//  Color+.swift
//  Buddy
//
//  Created by Hugo Silva on 08/07/23.
//

import SwiftUI

// MARK: - HEX Colors
extension Color {
    static func hexColor(_ hex: String) -> Color {
       if let hexNumber = UInt32(hex, radix: 16) {
          let red = Double((hexNumber & 0xFF0000) >> 16) / 255.0
          let green = Double((hexNumber & 0x00FF00) >> 8) / 255.0
          let blue = Double(hexNumber & 0x0000FF) / 255.0
          return Color(red: red, green: green, blue: blue, opacity: 1)
       }
       return Color(red: 0, green: 0, blue: 0, opacity: 1)
    }
}
