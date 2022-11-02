//
//  MainRepresentation.swift
//  BeautyApp
//
//  Created by Егор Бойко on 13.10.2022.
//

import Foundation

import SwiftUI

internal struct MainRepresentation: View {
    internal var body: some View {
        
        ZStack {
            Color.white
            VStack {
                Spacer()
                CmLineButton("Изменить запись", imageName: ("Note"), action: {})
                CmLineButton("Посмотреть отзывы", imageName: ("Star"), action: {})
               
                CmLineButton("Ногти", action: {})
                CmLineButton("Волосы", action: {})
                Spacer()
            }
            .padding(.horizontal, 16)
            
        }
        .ignoresSafeArea()
        
        
    }
}

#if DEBUG
struct MainRepresentation_Previews: PreviewProvider {
    static var previews: some View {
        self.devices {
            MainRepresentation()
        }
    }
}
#endif
