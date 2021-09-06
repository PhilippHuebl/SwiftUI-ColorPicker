//
//  RectangleColorPicker.swift
//  
//
//  Created by Philipp Hübl on 29.08.21.
//

import SwiftUI
import Grid

@available(iOS 13.0, *)
public struct RectangleColorPicker: View {
    
    @Binding var selectedColor: Color
    var colors: [ColorPalette]
    var borderColor: Color
    var width: CGFloat
    var height: CGFloat
    var rows: Int
    var columns: Int
    
    public init (selectedColor:Binding<Color>, colors:[Color], borderColor:Color, width:CGFloat, height:CGFloat, rows:Int, columns:Int) {
        self._selectedColor = selectedColor
        self.colors = [ColorPalette]()
        for color in colors {
            self.colors.append(ColorPalette(color: color))
        }
        self.borderColor = borderColor
        self.width = width
        self.height = height
        self.rows = rows
        self.columns = columns
    }
    
    public var body: some View {
    
        Grid(colors) { color in
            
            if (color.color == selectedColor){
                Rectangle()
                    .strokeBorder(borderColor, lineWidth: 5)
                    .background(Rectangle().foregroundColor(color.color))
                    .frame(width: width, height: height)
            } else {
                Rectangle()
                    .strokeBorder(Color.clear)
                    .background(Rectangle().foregroundColor(color.color))
                    .frame(width: width, height: height)
                    .onTapGesture {
                        selectedColor = color.color
                    }
            }
                
        }
        .gridStyle(ModularGridStyle(columns: Tracks(integerLiteral: columns), rows: Tracks(integerLiteral: rows), spacing: 1))
    }
}

#if DEBUG
@available(iOS 13.0, *)
struct RectangleColorPicker_Previews: PreviewProvider {
    static var previews: some View {
        RectangleColorPicker(selectedColor: .constant(Color.blue), colors: [Color.red, Color.blue, Color.green, Color.orange, Color.pink, Color(.systemTeal)], borderColor: Color.black, width: 100, height: 50, rows: 3, columns: 3)
    }
}
#endif


