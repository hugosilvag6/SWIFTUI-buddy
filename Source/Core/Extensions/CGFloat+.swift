//
//  CGFloat+.swift
//  Buddy
//
//  Created by Hugo Silva on 08/07/23.
//

import SwiftUI

extension CGFloat {
    static func scaled(_ size: CGFloat) -> CGFloat {
        return size * (375 / UIScreen.main.bounds.width)
    }
}
