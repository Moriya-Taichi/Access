//
//  TopicsViewModel.swift
//  TwitterForMe
//
//  Created by 守谷太一 on 2019/02/16.
//  Copyright © 2019 守谷太一. All rights reserved.
//

import RxSwift
import RxCocoa
import RxOptional
class TopicsViewModel{
    struct Input{
        let selectedTap:Signal<Void>
    }
    struct Output{
        let allItem:Driver<[Topics]>
    }
    let testTopics = [Topics.init(topicsName: "Swift", topicsSize: 5),Topics.init(topicsName: "iOS", topicsSize: 4),
                      Topics.init(topicsName: "開発", topicsSize: 4),Topics.init(topicsName: "寝", topicsSize: 2),
                      Topics.init(topicsName: "酒", topicsSize: 3),Topics.init(topicsName: "rx", topicsSize: 1)]
    let disposeBug = DisposeBag()
    let output:Output
    init(){
        self.output = Output.init(allItem: Driver<[Topics]>.just(testTopics))
    }
}
