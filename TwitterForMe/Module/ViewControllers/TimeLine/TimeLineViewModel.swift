//
//  TimeLineViewModel.swift
//  TwitterForMe
//
//  Created by 守谷太一 on 2019/02/08.
//  Copyright © 2019 守谷太一. All rights reserved.
//

import Kanna
import Alamofire
import RxSwift
import RxAtomic
import RxCocoa
import Foundation
final class TimeLineViewModel{
    struct Input {
        let updateGesture:Driver<UISwipeGestureRecognizer>
    }
    struct Output {
        let tweets:Driver<[scrapedTweetItem]>
    }
    private let timelineURL = "https://twitter.com/i/profiles/show/EXCode013/timeline/tweets?composed_count=0&include_available_features=1&include_entities=1&0&reset_error_state=false"
    private let followURL   = "https://twitter.com/EXCode013/following/users?include_available_features=1&include_entities=1&lang=ja&0&reset_error_state=false"
    let disposeBug = DisposeBag()
    let API = TwitterAPI.publicAPI
    let userID = "EXCode013"
    init() {
    }
    func build(input:Input)->Output{
        let tweets = API.scarapeTimeLine(userID: userID).flatMap{ [weak self] json -> Observable<[scrapedTweetItem]> in
            return (self?.API.scrapeTweetContent(json: json))!
        }
        return Output(tweets: tweets.asDriver(onErrorDriveWith: .empty()))
    }
}
