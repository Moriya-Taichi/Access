//
//  TimeLineVoewController.swift
//  TwitterForMe
//
//  Created by 守谷太一 on 2019/02/02.
//  Copyright © 2019年 守谷太一. All rights reserved.
//

import UIKit
import RxSwift
import RxAtomic
class TimeLineViewController: UIViewController,ViewController,UITableViewDataSource{
    @IBOutlet weak var timeLineView: UITableView!
    typealias V = TimeLineViewController
    static func make()->V{
        let vc = R.storyboard.timeLineViewController.instantiateInitialViewController()!
        return vc
    }
    private lazy var viewModel = TimeLineViewModel()
    let refreshControll = UIRefreshControl()
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .darkGray
        timeLineView.backgroundColor = .darkGray
        bind()
    }
    private func bind(){
        let updateGesture = UISwipeGestureRecognizer()
        timeLineView.refreshControl = refreshControll
        let input = TimeLineViewModel.Input(updateGesture: updateGesture.rx.event.filter{$0.direction == .up}.asDriver(onErrorDriveWith: .empty()))
        
    }
}
