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
        let allItem:Driver<[topics]>
    }
    let disposeBug = DisposeBag()
//    func build(input:Input) -> Output{
//        
//    }
}
