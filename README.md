<p align="center">
  <img width="979" height="480" src="https://github.com/PhilippHuebl/SwiftUI-ColorPicker/blob/main/images/Title.gif?raw=true">
</p>

# SwiftUIColorPicker

A customizable Color Picker 100% in SwiftUI 

# Requirements

- iOS 13.0+
- Xcode 11+

# Installation

To install SwiftUIColorPicker you can use the Swift Packet Manager (SPM).

In Xcode navigate to File → Swift Packages → Add Package Dependency...

Use this URL to add the dependency: https://github.com/PhilippHuebl/SwiftUI-ColorPicker

# Style

## Circle

<p align="center">
  <img width="320" height="417" src="https://github.com/PhilippHuebl/SwiftUI-ColorPicker/blob/main/images/CircleColorPicker.gif?raw=true">
</p>

```swift
import SwiftUI
import SwiftUIColorPicker

struct ContentView: View {
    
    @State var foregroundColor : Color = Color(.blue)
    let colors : [Color] = [Color(.red), Color(.blue), Color(.green), Color(.orange), Color(.systemPink), Color(.systemTeal)]
    let borderColor : Color = Color(.black)
    
    
    var body: some View {
        VStack {
            Rectangle()
                .frame(width: 200, height: 100, alignment: .center)
                .foregroundColor(foregroundColor)
            
            CircleColorPicker(selectedColor: $foregroundColor, colors: colors, borderColor: borderColor, width: 50, height: 50, rows: 3, columns: 2)
                .frame(width: 200, height: 200, alignment: .center)
        }
        
    }
}
```

## Rectangle

<p align="center">
  <img width="320" height="370" src="https://github.com/PhilippHuebl/SwiftUI-ColorPicker/blob/main/images/RectangleColorPicker.gif?raw=true">
</p>

```swift
import SwiftUI
import SwiftUIColorPicker

struct ContentView: View {
    
    @State var foregroundColor : Color = Color(.blue)
    let colors : [Color] = [Color(.red), Color(.blue), Color(.green), Color(.orange), Color(.systemPink), Color(.systemTeal)]
    let borderColor : Color = Color(.black)
    
    
    var body: some View {
        VStack {
            Circle()
                .frame(width: 200, height: 100, alignment: .center)
                .foregroundColor(foregroundColor)
            
            RectangleColorPicker(selectedColor: $foregroundColor, colors: colors, borderColor: borderColor, width: 75, height: 50, rows: 2, columns: 3)
                .frame(width: 300, height: 200, alignment: .center)
        }
        
    }
}
```


# Contributions

Contributions are welcome and encouraged!

# License

SwiftUIColorPicker is available under the MIT license. See the LICENSE file for more info.

