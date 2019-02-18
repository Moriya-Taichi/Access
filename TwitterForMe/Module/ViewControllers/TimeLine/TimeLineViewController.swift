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
        timeLineView.register(UINib(nibName: "TimeLineViewControllerCell", bundle: nil), forCellReuseIdentifier: "tweet")
        timeLineView.dataSource = self
        timeLineView.rowHeight = UITableView.automaticDimension
        bind()
    }
    private func bind(){
        let updateGesture = UISwipeGestureRecognizer()
        timeLineView.refreshControl = refreshControll
        let input = TimeLineViewModel.Input(updateGesture: updateGesture.rx.event.filter{$0.direction == .up}.asDriver(onErrorDriveWith: .empty()))
        let output = viewModel.build(input: input)
        
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "tweet", for: indexPath) as! TimeLineViewControllerCell
        cell.userId.tintColor = .gray
        cell.userId.font = UIFont.systemFont(ofSize: 15)
        cell.userIcon.image = R.image.testUserIcon()?.rezize(size: CGSize(width: 20, height: 20))
        cell.userName.text = "test"
        cell.userId.text   = "test"
        cell.tweetText.text = "aaa"
        cell.tweetImage.backgroundColor = .darkGray
        return cell
    }
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
}
