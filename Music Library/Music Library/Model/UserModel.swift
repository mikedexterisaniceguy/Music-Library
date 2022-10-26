//
//  UserModel.swift
//  Music Library
//
//  Created by 123 on 25.10.22.
//

import Foundation

struct User: Codable {
    var firstName: String
    var secondName: String
    var phone: String
    var email: String
    var password: String
    var age: Date
}
