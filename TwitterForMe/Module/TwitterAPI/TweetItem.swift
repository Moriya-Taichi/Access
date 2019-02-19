//
//  TweetItem.swift
//  TwitterForMe
//
//  Created by 守谷太一 on 2019/02/19.
//  Copyright © 2019 守谷太一. All rights reserved.
//

import Foundation
struct TweetItem:Codable{
    let id:String
    let text:String
    let user:String
    static func perseJSON(json:Data) throws -> TweetItem{
        let decoder = JSONDecoder()
        decoder.keyDecodingStrategy = .convertFromSnakeCase
        guard let tweetItem = try? decoder.decode(TweetItem.self, from: json) else {
            throw apiError("Error persing Tweet JSON")
        }
        return TweetItem(id: tweetItem.id, text: tweetItem.text, user: tweetItem.user)
    }
}
