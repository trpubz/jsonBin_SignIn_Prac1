//
//  User.swift
//  jsonBin_SignIn_Prac1
//
//  Created by Taylor Pubins on 9/20/20.
//

import Foundation
import Combine
import Alamofire
import SwiftyJSON

class UserStore: ObservableObject {
    @Published var usr: User
    
    init() {
        
        self.usr = User(username: "", id: "", email: "")
        pullUserList()
        
        self.usr.username = UserDefaults.standard.string(forKey: "username") ?? ""

    }
}

extension UserStore {
    func pullUserList() {
        let j = JB()
        AF.request(j.usersURL, headers: j.headers).validate().responseJSON { response in
            //debugPrint(response)
            switch response.result {
            case .success(let value):
                let json = JSON(value)
                let match = json.first(where: {$1["username"] == "test"})
                print(match?.1["id"])
            case .failure(let error):
                print(error)
            }
        }
    }
}

struct User: Codable {
    var username: String
    var id: String
    var email: String = ""
    
}

extension User {
    enum CodingKeys: String, CodingKey {
        case username = "username"
        case id = "id"
    }
}
