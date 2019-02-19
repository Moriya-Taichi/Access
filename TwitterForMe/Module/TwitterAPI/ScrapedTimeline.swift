//
//  TwitterTimeLine.swift
//  TwitterForMe
//
//  Created by 守谷太一 on 2019/02/12.
//  Copyright © 2019 守谷太一. All rights reserved.
//

import Foundation
struct scrapedTweetTimeline:Codable {
    let hasMoreItems:Bool
    let itemsHtml:String
    let maxPosition:String
    let minPosition:String
    let newLatentCount:Int
    static func perseJSON(json:Data) throws -> scrapedTweetTimeline{
        let decoder = JSONDecoder()
        decoder.keyDecodingStrategy = .convertFromSnakeCase
        guard let timeline = try? decoder.decode(scrapedTweetTimeline.self, from: json) else {
            throw apiError("Error persing timeline JSON")
        }
        return scrapedTweetTimeline(hasMoreItems: timeline.hasMoreItems, itemsHtml: timeline.itemsHtml, maxPosition: timeline.maxPosition, minPosition: timeline.minPosition, newLatentCount: timeline.newLatentCount)
    }
}
