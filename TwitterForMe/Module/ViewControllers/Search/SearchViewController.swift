//
//  SearchViewController.swift
//  TwitterForMe
//
//  Created by 守谷太一 on 2019/02/16.
//  Copyright © 2019 守谷太一. All rights reserved.
//

import UIKit
import RxSwift
import RxCocoa
class SearchViewController: UIViewController,ViewController {
    @IBOutlet weak var searchViewController: UITableView!
    @IBOutlet weak var searchBar: UISearchBar!
    typealias V = SearchViewController
    static func make() -> V {
        let vc = R.storyboard.searchViewController.instantiateInitialViewController()!
        return vc
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .darkGray
        searchViewController.backgroundColor = .darkGray
        bind()
    }
    private func bind(){
        let input = SearchViewModel.Input.init(searchText:searchBar.rx.text.debounce(0.5,scheduler: MainScheduler.instance).filterNil().distinctUntilChanged().asDriver(onErrorDriveWith: .empty()))
        let viewModel = SearchViewModel.init(input: input)
        viewModel
    }
}
