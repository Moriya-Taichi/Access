//
//  SearchViewModel.swift
//  TwitterForMe
//
//  Created by 守谷太一 on 2019/02/16.
//  Copyright © 2019 守谷太一. All rights reserved.
//

import RxSwift
import RxCocoa
import RxAtomic
class SearchViewModel {
    struct Input {
        let searchText:Driver<String>
    }
    struct Output {
        let filteredTweets:Driver<[scrapedTweetItem]>
    }
    let API = TwitterAPI.publicAPI
    init(input:Input){
        
    }
}
