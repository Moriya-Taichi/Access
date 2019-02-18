//
//  TwitterAPI.swift
//  TwitterForMe
//
//  Created by 守谷太一 on 2019/02/11.
//  Copyright © 2019 守谷太一. All rights reserved.
//

import RxSwift
import RxCocoa
import Kanna
import Alamofire
func apiError(_ error: String) -> NSError {
    return NSError(domain: "TwitterAPI", code: -1, userInfo: [NSLocalizedDescriptionKey: error])
}
protocol TwitterAPIBase{
    func scarapeTimeLine(userID:String) -> Observable<scrapedTweetJSON>
    func scrapeTweetContent(json:scrapedTweetJSON) -> Observable<[scrapedTweetItem]>
}
class TwitterAPI:TwitterAPIBase{
    static let publicAPI = TwitterAPI()
    private var tweetItems:[scrapedTweetItem] = []
    private init(){}
    func getHomeTimeLine(){
        
    }
    func scarapeTimeLine(userID: String) -> Observable<scrapedTweetJSON> {
        let requestURL = "https://twitter.com/i/profiles/show/\(userID)/timeline/tweets?composed_count=0&include_available_features=1&include_entities=1&0&reset_error_state=false"
        return Observable<scrapedTweetJSON>.create{ timeLine  -> Disposable in
            Alamofire.request(requestURL).responseJSON { response in
                switch response.result.isSuccess{
                case true: timeLine.onNext(try! scrapedTweetJSON.perseJSON(json: response.data!))
                case false: timeLine.onError(apiError("Can't get JSON"))
                }
            }
            return Disposables.create()
        }
    }
    func scrapeAllTimeLine(userID:String)->Observable<[scrapedTweetJSON]>{
        var maxPosition = "0"
        var requestFrag = true
        var timeLine:[scrapedTweetJSON]  = []
        while requestFrag{
            let requestURL  = "https://twitter.com/i/profiles/show/\(userID)/timeline/tweets?include_available_features=1&include_entities=1&\(maxPosition)&reset_error_state=false"
            Alamofire.request(requestURL).responseJSON { response in
                switch response.result.isSuccess{
                case true:
                    let json = try! scrapedTweetJSON.perseJSON(json: response.data!)
                    requestFrag = json.hasMoreItems
                    maxPosition = json.minPosition
                    timeLine.append(json)
                case false: break
                }
            }
        }
        return Observable<[scrapedTweetJSON]>.create{ allTimeLine  -> Disposable in
            allTimeLine.onNext(timeLine)
            return Disposables.create()
        }
    }
    func scrapeTweetContent(json: scrapedTweetJSON) -> Observable<[scrapedTweetItem]> {
        guard let tweets = try? HTML(html: json.itemsHtml, encoding: .utf8).css("li.js-stream-item") else {
            return Observable.error(apiError("Can't created HTML from this json"))
        }
        tweets.forEach(){
            tweetItems.append(try! scrapedTweetItem.perseHTML(html: $0))
        }
        return Observable<[scrapedTweetItem]>.create{ tweetContens -> Disposable in
            tweetContens.onNext(self.tweetItems)
            return Disposables.create()
        }
    }
}
