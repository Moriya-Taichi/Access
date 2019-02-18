//
//  SearchViewController.swift
//  TwitterForMe
//
//  Created by 守谷太一 on 2019/02/16.
//  Copyright © 2019 守谷太一. All rights reserved.
//

import UIKit
class SearchViewController: UIViewController,ViewController {
    @IBOutlet weak var searchViewController: UITableView!
    typealias V = SearchViewController
    static func make() -> V {
        let vc = R.storyboard.searchViewController.instantiateInitialViewController()!
        return vc
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .darkGray
        searchViewController.backgroundColor = .darkGray
    }
}
