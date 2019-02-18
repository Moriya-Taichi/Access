//
//  TwitterTimeLine.swift
//  TwitterForMe
//
//  Created by 守谷太一 on 2019/02/12.
//  Copyright © 2019 守谷太一. All rights reserved.
//

import Foundation
struct scrapedTweetJSON:Codable {
    let hasMoreItems:Bool
    let itemsHtml:String
    let maxPosition:String
    let minPosition:String
    let newLatentCount:Int
    static func perseJSON(json:Data) throws -> scrapedTweetJSON{
        let decoder = JSONDecoder()
        decoder.keyDecodingStrategy = .convertFromSnakeCase
        guard let tweet = try? decoder.decode(scrapedTweetJSON.self, from: json) else {
            throw apiError("Error persing timeline JSON")
        }
        return scrapedTweetJSON(hasMoreItems: tweet.hasMoreItems, itemsHtml: tweet.itemsHtml, maxPosition: tweet.maxPosition, minPosition: tweet.minPosition, newLatentCount: tweet.newLatentCount)
    }
}
