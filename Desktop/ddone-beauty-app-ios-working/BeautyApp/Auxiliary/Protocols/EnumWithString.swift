//
//  EnumWithString.swift
//  BeautyApp
//
//  Created by Elaidzha Shchukin on 30.10.2022.
//

protocol EnumWithString: CustomStringConvertible, RawRepresentable {
    ///Prefix
    static var annex: String { get }
}

extension EnumWithString {
    static var symbol: String { "-" }
    ///For custom string convertible
    var description: String {
        ((self.rawValue as? String) ?? "default")
    }
    ///Quick access to a string value
    var str: String {
        ((self.rawValue as? String) ?? "default")
    }
}

