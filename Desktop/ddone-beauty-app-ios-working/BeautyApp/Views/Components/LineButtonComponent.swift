//
//  LineButtonComponent.swift
//  BeautyApp
//
//  Created by Elaidzha Shchukin on 20.10.2022.
//

import SwiftUI

struct LineButtonComponent: View {
    
    let text: String
    let image: String?
    let action: () -> Void
    let color: Color
    
    let imageSizeLimit: CGFloat = 35
    
    init(_ text: String, imageName image: String? = nil, backgroundColor: Color = Color.elements(.bright), action: @escaping () -> Void) {
        self.text = text
        self.image = image
        self.action = action
        self.color = backgroundColor
    }
    
    var body: some View {
        ZStack {
            self.color
            HStack {
                if image != nil {
                    Image(image!)
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(maxWidth: imageSizeLimit, maxHeight: imageSizeLimit)
                        .padding(.leading, 14)
                    
                }
                
                Text(text)
                //   .font(.custom(“Circe-Regular”))
                    .padding(.leading, 12)
                
                Spacer()
                
                
                Button(action: action) {
                    Image(systemName: "chevron.right")
                        .foregroundColor(Color.elements(.chevron))
                        .font(.system(size: 18))
                        .padding(.trailing, 12)
                    
                }
            }
        }
        .frame(height: 49)
        .mask(
            RoundedRectangle(cornerRadius: 13, style: .continuous)
                .frame(height: 49)
                .foregroundColor(.background)
        )
        
    }
}

///struct LineButtonComponent_Previews: PreviewProvider {
   /// static var previews: some View {
      ///  LineButtonComponent(text: "Ногти")
    ///}
///}

