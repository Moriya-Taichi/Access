//
//  DirectMailViewController.swift
//  TwitterForMe
//
//  Created by 守谷太一 on 2019/02/16.
//  Copyright © 2019 守谷太一. All rights reserved.
//

import UIKit
class DirectMailViewController: UIViewController,ViewController {
    @IBOutlet weak var directMailView: UITableView!
    typealias V = DirectMailViewController
    static func make() -> V{
        let vc = R.storyboard.directMailViewController.instantiateInitialViewController()!
        return vc
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .darkGray
        directMailView.backgroundColor = .darkGray
    }
    private func setupUI(){
        
    }
}
