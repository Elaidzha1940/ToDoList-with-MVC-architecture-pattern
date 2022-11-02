//
//  ResourcesStringValue.swift
//  BeautyApp
//
//  Created by Elaidzha Shchukin on 30.10.2022.
//

import Foundation

protocol ResourcesStringValue: EnumWithString {
    var prefix: String { get }
}

extension ResourcesStringValue {
    var name: String {
        self.prefix + Self.symbol + Self.annex + Self.symbol + self.str
    }
}
