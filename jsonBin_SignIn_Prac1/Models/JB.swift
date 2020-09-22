//
//  JB.swift
//  jsonBin_SignIn_Prac1
//
//  Created by Taylor Pubins on 9/20/20.
//

import Foundation
import Alamofire

struct JB {
    let collection = "5f4f964f993a2e110d3ccbf5"
    let users = "5f682dfe7243cd7e82406c6c"
    let root = "https://api.jsonbin.io/"
    let bin = "b/"
    let version = "/latest"
    static let apiKey = "$2b$10$UDqy5qkoS6FwFO5s2wu5nODnHxEcs43GZ7NHkoMV/7n0s.hFZiNAa"
    let headers: HTTPHeaders = [
        "secret-key": apiKey
    ]
    
    var usersURL: String {
        root + bin + users + version
    }
}
