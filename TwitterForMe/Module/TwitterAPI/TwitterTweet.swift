//
//  TwitterTweet.swift
//  TwitterForMe
//
//  Created by 守谷太一 on 2019/02/11.
//  Copyright © 2019 守谷太一. All rights reserved.
//

import Kanna
struct scrapedTweetItem{
    let tweetID: String
    let name: String
    let userName: String
    let contributionDate: String
    let tweetText: String
    let replyCount: String
    let rtCount: String
    let favCount: String
    static func perseHTML(html:XMLElement) throws -> scrapedTweetItem{
        let tweetHTML = html.toHTML!
        guard let tweetID   = html["data-item-id"],
            let fullName   = try? HTML(html: tweetHTML, encoding: .utf8).css("strong.fullname").first?.content as! String,
            let userName   = try? HTML(html: tweetHTML, encoding: .utf8).css("span.username").first?.content as! String,
            let timeStamp  = try? HTML(html: tweetHTML, encoding: .utf8).css("span._timestamp").first?.content as! String,
            let tweetText  = try? HTML(html: tweetHTML, encoding: .utf8).css("div.js-tweet-text-container").first?.content as! String,
            let tweetStatus = try? HTML(html: tweetHTML, encoding: .utf8).css("span.ProfileTweet-actionCount") else {
                throw apiError("Error persing tweet content")
        }
        return scrapedTweetItem(tweetID: tweetID, name: fullName, userName: userName, contributionDate: timeStamp, tweetText: tweetText, replyCount: tweetStatus[0].content ?? "", rtCount: tweetStatus[1].content ?? "", favCount: tweetStatus[2].content ?? "")
    }
}
