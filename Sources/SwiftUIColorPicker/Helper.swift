//
//  Helper.swift
//  
//
//  Created by Philipp Hübl on 29.08.21.
//

import Foundation
import SwiftUI

@available(iOS 13.0, *)
struct ColorPalette: Identifiable {
    let id: UUID = UUID()
    var color: Color = Color.white
    
    init(color: Color) {
        self.color = color
    }
}
