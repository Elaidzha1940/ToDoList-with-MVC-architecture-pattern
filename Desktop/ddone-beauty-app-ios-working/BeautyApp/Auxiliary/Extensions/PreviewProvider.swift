//
//  PreviewProvider.swift
//  BeautyApp
//
//  Created by Elaidzha Shchukin on 30.10.2022.
//

import SwiftUI

extension PreviewProvider {
    static func devices(@ViewBuilder content: () -> some View) -> some View {
        Group{
           /// content()
              ///  .preferredColorScheme(.dark)
                ///.previewDevice(PreviewDevice(rawValue: "iPhone 14 Pro Max"))
                ///.previewDisplayName("14 Pro Max - Dark")
            content()
                .preferredColorScheme(.light)
                .previewDevice(PreviewDevice(rawValue: "iPhone 14 Pro Max"))
                .previewDisplayName("14 Pro Max - Light")
          ///  content()
                ///.preferredColorScheme(.dark)
                ///.previewDevice(PreviewDevice(rawValue: "iPhone SE (1st generation)"))
                ///.previewDisplayName("SE - Dark")
            content()
                .preferredColorScheme(.light)
                .previewDevice(PreviewDevice(rawValue: "iPhone SE (1st generation)"))
                .previewDisplayName("SE - Light")
        }
    }
}
