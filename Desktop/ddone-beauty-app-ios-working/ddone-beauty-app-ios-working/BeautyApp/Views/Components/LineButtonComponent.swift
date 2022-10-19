//
//  LineButtonComponent.swift
//  BeautyApp
//
//  Created by Elaidzha Shchukin on 19.10.2022.
//

import SwiftUI

struct LineButtonComponent: View {
    
    let text: String
    let image: String?
    let action: () -> Void
    let colors: (background: Color)
    
    init(_ text: String, imageName image: String ? = nil, backgroundColor: Color = .elements, action: @escaping () -> Void) {
        self.text = text
        self.image = image
        self.action = action
    }
    
    var body: some View {
        ZStack {
            self.colors.background
            HStack {
                if image != nil {
                    Image(image)
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(maxWidth: 50, maxHeight: 50)
                    
                }
                    
            }
        }
    }
}

struct LineButtonComponent_Previews: PreviewProvider {
    static var previews: some View {
        LineButtonComponent(text: "Ногти")
    }
}
