//
//  TopicsViewController.swift
//  TwitterForMe
//
//  Created by 守谷太一 on 2019/02/16.
//  Copyright © 2019 守谷太一. All rights reserved.
//

import UIKit
class TopicsViewController: UIViewController,ViewController {
    typealias V = TopicsViewController
    static func make() -> V{
        let vc = R.storyboard.topicsViewController.instantiateInitialViewController()!
        return vc
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
        bind()
    }
    private func setupUI(){
        self.view.backgroundColor = .darkGray
    }
    private func bind(){
        
    }
}
