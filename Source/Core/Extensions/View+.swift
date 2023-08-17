//
//  View+.swift
//  Buddy
//
//  Created by Hugo Silva on 08/07/23.
//

import SwiftUI

// MARK: - Alert
extension View {
    func showAlert(_ message: String,
                   action: (() -> Void)? = nil) {
        DispatchQueue.main.async { CoordinatorViewModel.shared.showAlert = CustomAlert(text: message, action: action) }
    }
}
// MARK: - Loading
extension View {
    func showLoading() {
        DispatchQueue.main.async { CoordinatorViewModel.shared.showLoadingView = true }
    }
    func hideLoading() {
        DispatchQueue.main.async { CoordinatorViewModel.shared.showLoadingView = false }
    }
}

// MARK: - Fonts
extension View {
    func customFont(_ size: CGFloat, font: CustomFontManager.CustomFonts = .poppins, weight: CustomFontManager.CustomFontsWeight = .regular) -> some View {
        return self
            .font(.custom(CustomFontManager.getFont(font: font, weight: weight), size: .scaled(size)))
    }
}
struct CustomFontManager {
    enum CustomFonts: Equatable {
        case poppins, ubuntu
    }
    enum CustomFontsWeight: Equatable {
        case regular, medium, bold, light
    }
    static func getFont(font: CustomFonts, weight: CustomFontsWeight) -> String {
        switch font {
        case .poppins:
            switch weight {
            case .regular: return Constants.Fonts.poppinsRegular
            case .medium: return Constants.Fonts.poppinsMedium
            case .bold: return Constants.Fonts.poppinsBold
            case .light: return Constants.Fonts.poppinsLight
            }
        case .ubuntu:
            switch weight {
            case .regular: return Constants.Fonts.ubuntuRegular
            case .medium: return Constants.Fonts.ubuntuMedium
            case .bold: return Constants.Fonts.ubuntuBold
            case .light: return Constants.Fonts.ubuntuLight
            }
        }
    }
}
