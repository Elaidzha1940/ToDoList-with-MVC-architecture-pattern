//
//  Resources.swift
//  BeautyApp
//
//  Created by Elaidzha Shchukin on 30.10.2022.
//

import Foundation

enum Resource {}

//MARK: SF Image
extension Resource {
    enum SF {
        static let prefix: String = "sf"
        
        enum System: String, ResourcesStringValue {
            internal var prefix: String { Resource.SF.prefix }
            static internal let annex: String = ""
            case dgd
        }
        
        enum Collection: String, ResourcesStringValue {
            internal var prefix: String { Resource.SF.prefix }
            static internal let annex: String = ""
            case `default`
        }
    }
    
}
