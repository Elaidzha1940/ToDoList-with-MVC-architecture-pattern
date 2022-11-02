//
//  Image.swift
//  BeautyApp
//
//  Created by Elaidzha Shchukin on 30.10.2022.
//

import SwiftUI

//MARK: Basic image setup from SF
extension Image {
    internal init<T: ResourcesStringValue>(_ name: T){
        self.init(name.name)
    }
    static fileprivate let sfSize: CGFloat = 30
    ///Basic image setup from SF
    func sf(color: Color, size: CGFloat = Self.sfSize) -> some View {
        let image = self
            .font(.system(size: size * 1.5, weight: .medium))
            .foregroundColor(color)
            .animation(.spring(), value: color)
        return image
    }
    //MARK: Helper Methods
    ///Basic image setup from SF
    func sf(_ color: Color, _ size: CGFloat = Self.sfSize) -> some View {
        self.sf(color: color, size: size)
    }
    ///Basic image setup from SF
    func sf(_ color: Color, size: CGFloat = Self.sfSize) -> some View {
        self.sf(color: color, size: size)
    }
    ///Basic image setup from SF
    func sf(color: Color, _ size: CGFloat = Self.sfSize) -> some View {
        self.sf(color: color, size: size)
    }
}
