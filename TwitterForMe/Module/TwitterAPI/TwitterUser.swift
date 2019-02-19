//
//  TwitterUser.swift
//  TwitterForMe
//
//  Created by 守谷太一 on 2019/02/19.
//  Copyright © 2019 守谷太一. All rights reserved.
//

import Foundation
struct User:Codable{
    let id:String
    let screenName:String
    let name:String
    let profileImgURL:String
    static func perseJSON(json:Data) throws -> User{
        let decoder = JSONDecoder()
        decoder.keyDecodingStrategy = .convertFromSnakeCase
        guard let user = try? decoder.decode(User.self, from: json) else {
            throw apiError("Error persing User JSON")
        }
        return User(id: user.id, screenName: user.screenName, name: user.name, profileImgURL: user.profileImgURL)
    }
}
