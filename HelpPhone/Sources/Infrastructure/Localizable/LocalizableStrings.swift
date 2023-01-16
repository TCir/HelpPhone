//
//  LocalizableStrings.swift
//  HelpPhone
//
//  Created by Thiago Valentim on 15/01/23.
//

import Foundation
import UIKit

enum LocalizableStrings:String {
    case email
    case user
    case password
    case buttonOpen
    case register
    case forgotpassword
    
    func localize() -> String {
        rawValue.localizeInCurrentBundle()
    }
}

extension String {
    func localizeInCurrentBundle(_ acessibility: Bool = false) -> String {
        let path: Bundle = .current
        
        return NSLocalizedString(self, tableName: acessibility ?
                                 "LocalizableLoginAccessibilityLocalizable":
                                 "LoginLocalizable",
                                 bundle: path,
                                 value: String(),
                                 comment: String())
    }
    
}


extension Bundle {
    static var current: Bundle {
        class DummyClass {
            init() {
                
            }
        }
        
        return Bundle(for: DummyClass.self)
    }
}
