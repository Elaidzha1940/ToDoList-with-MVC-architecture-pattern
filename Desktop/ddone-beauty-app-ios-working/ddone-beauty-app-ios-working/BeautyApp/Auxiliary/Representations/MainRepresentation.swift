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
            Color.background(.scheme)
            CmLineButton(text: "Ногти")
        }
        .ignoresSafeArea()
        
    }
}


struct MainRepresentation_Previews: PreviewProvider {
    static var previews: some View {
        MainRepresentation()
    }
}
