//
//  String + extension.swift
//  Music Library
//
//  Created by 123 on 25.10.22.
//

import Foundation

extension String {
    
    enum ValidTypes {
        case name
    }
    
    enum Regex: String {
        case name = "[a-zA-Z]{1,}"
    }
    
    func isValid(validType: ValidTypes) -> Bool {
        let format = "SELF MATCHES %@"
        var regex = ""
        
        switch validType {
        case .name:
            regex = Regex.name.rawValue
        }
        
        return NSPredicate(format: format, regex).evaluate(with: self)
        
    }
}
