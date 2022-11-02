//
//  CubeComponent.swift
//  BeautyApp
//
//  Created by Elaidzha Shchukin on 21.10.2022.
//

import SwiftUI

internal struct ExampleComponent: View {
    static let cornerRadius: CGFloat = 20
    
    var size: CGFloat = 79
    var padding: (leading: CGFloat, top: CGFloat) = (26, 33)
    var frame: CGSize = .init(width: 99.85, height: 92)
    var colors: (circle: Color, background: Color)
    
    let action: ()->()

    init(
        size: CGFloat = 79,
        padding: (leading: CGFloat, top: CGFloat) = (26, 33),
        frame: CGSize = .init(width: 99.85, height: 92),
        colors: (circle: Color, background: Color) = (.red, .yellow),
        action: @escaping () -> Void = {}) {
            self.size = size
            self.padding = padding
            self.frame = frame
            self.action = action
            self.colors = colors
    }
    
    func setBackgroundColor(_ color: Color) -> ExampleComponent {
        var temp = self
        temp.colors.background = color
        return temp
    }
    
    func setCircleColor(_ color: Color) -> ExampleComponent {
        var temp = self
        temp.colors.circle = color
        return temp
    }
    
    
    internal var body: some View {
        Button(action: action) {
            ZStack {
                colors.background
                
                Circle()
                    .frame(width: self.size, height: self.size)
                    .foregroundColor(colors.circle)
                    .padding(.leading, self.padding.leading)
                    .padding(.top, self.padding.top)
                    .offset(x: 2, y: 2)
            }
            .frame(width: self.frame.width, height: self.frame.height)
            .mask(
                RoundedRectangle(cornerRadius: ExampleComponent.cornerRadius)
            )
        }
    }
}


//25

struct CubeComponent: View {
    
    @State var toggle: Bool = false
    
    var color: Color {
        toggle ? .red : .yellow
        
    }
    
    var body: some View {
        
        VStack {
            HStack {
                
                
                
//                ZStack {
//                    Color.elements(.Eviolet)
//
//                    Circle()
//                        .frame(width: 79, height: 79)
//                        .foregroundColor(Color.elements(.ECviolet))
//                        .padding(.leading, 26)
//                        .padding(.top, 33)
//                        .offset(x: 2, y: 2)
//                }
//                .frame(width: 99.85, height: 92)
//                .mask(
//                    RoundedRectangle(cornerRadius: 7.85)
//                )
                ExampleComponent(action: { toggle.toggle() })
                    .setBackgroundColor(.elements(.Eviolet))
                    .setCircleColor(.elements(.ECviolet))
                
                ExampleComponent(action: {})
                    .setBackgroundColor(.elements(.Eyellow))
                    .setCircleColor(.elements(.ECyellow))
                
                ExampleComponent(action: {})
                    .setBackgroundColor(.elements(.Eblue))
                    .setCircleColor(.elements(.ECblue))
                
                ExampleComponent(action: {})
                    .setBackgroundColor(.elements(.Egreen))
                    .setCircleColor(.elements(.ECgreen))
                
//                ZStack {
//                    Color.elements(.Eyellow)
//
//                    Circle()
//                        .frame(width: 79, height: 79)
//                        .foregroundColor(Color.elements(.ECyellow))
//                        .padding(.leading, 26)
//                        .padding(.top, 33)
//                        .offset(x: 2, y: 2)
//                }
//                .frame(width: 99.85, height: 92)
//                .mask(
//                    RoundedRectangle(cornerRadius: 7.85)
//                )
//
//                ZStack {
//                    Color.elements(.Eblue)
//
//                    Circle()
//                        .frame(width: 79, height: 79)
//                        .foregroundColor(Color.elements(.ECblue))
//                        .padding(.leading, 26)
//                        .padding(.top, 33)
//                        .offset(x: 2, y: 2)
//                }
//                .frame(width: 99.85, height: 92)
//                .mask(
//                    RoundedRectangle(cornerRadius: 7.85)
//                )
//
//
//                ZStack {
//                    Color.elements(.Egreen)
//
//                    Circle()
//                        .frame(width: 79, height: 79)
//                        .foregroundColor(Color.elements(.ECgreen))
//                        .padding(.leading, 26)
//                        .padding(.top, 33)
//                        .offset(x: 2, y: 2)
//                }
//                .frame(width: 99.85, height: 92)
//                .mask(
//                    RoundedRectangle(cornerRadius: 7.85)
//                )
                
            }
          ///  .padding()
        }
        .background(color)
        
    }
}


struct CubeComponent_Previews: PreviewProvider {
    static var previews: some View {
    CubeComponent()
   }
}
