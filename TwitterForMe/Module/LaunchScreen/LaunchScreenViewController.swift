//
//  LaunchScreenViewController.swift
//  TwitterForMe
//
//  Created by 守谷太一 on 2019/02/16.
//  Copyright © 2019 守谷太一. All rights reserved.
//

import UIKit
class LaunchScreenViewController:UIViewController ,ViewController{
    typealias V = LaunchScreenViewController
    var logoImageView:UIImageView!
    static func make() -> V{
        let vc = R.storyboard.launchScreenViewController.instantiateInitialViewController()!
        return vc
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .white
        guard let logoImage = R.image.twitter()?.rezize(size: CGSize(width: self.view.frame.width*0.2, height: self.view.frame.width*0.2)) else { return }
        self.logoImageView = UIImageView(frame: CGRect(x: 0, y: 0, width: logoImage.size.width, height: logoImage.size.height))
        self.logoImageView.center = self.view.center
        self.logoImageView.image = logoImage
        self.view.addSubview(logoImageView)
    }
    override func viewDidAppear(_ animated: Bool) {
        UIView.animate(withDuration: 0.3,
                       delay: 1.2,
                       options: UIView.AnimationOptions.curveEaseOut,
                       animations: { () in
                        self.logoImageView.transform = CGAffineTransform(scaleX: 0.9, y: 0.9)
        }, completion: { (Bool) in
            
        })
        
        UIView.animate(withDuration: 0.2,
                       delay: 1.2,
                       options: UIView.AnimationOptions.curveEaseOut,
                       animations: { () in
                        self.logoImageView.transform = CGAffineTransform(scaleX: 5, y: 5)
                        self.logoImageView.alpha = 0
        }, completion: { (Bool) in
            self.logoImageView.removeFromSuperview()
            var viewControllers:[UIViewController] = []
            let timeLine   = TimeLineViewController.make()
            let search     = SearchViewController.make()
            let topics     = TopicsViewController.make()
            let directMail = DirectMailViewController.make()
            let homeIcon   = R.image.home()?.rezize(size: CGSize(width: 30, height: 30))
            let topicsIcon = R.image.topics()?.rezize(size: CGSize(width: 30, height: 30))
            
            timeLine.tabBarItem = UITabBarItem(title: "TL", image: homeIcon, tag: 1)
            search.tabBarItem   = UITabBarItem(tabBarSystemItem: .search, tag: 2)
            topics.tabBarItem   = UITabBarItem(title: "Topics", image: topicsIcon, tag: 3)
            directMail.tabBarItem = UITabBarItem(tabBarSystemItem: .contacts, tag: 4)
            
            viewControllers.append(timeLine)
            viewControllers.append(search)
            viewControllers.append(topics)
            viewControllers.append(directMail)
            
            let tabBarController = UITabBarController()
            tabBarController.setViewControllers(viewControllers, animated: true)
            tabBarController.tabBar.barTintColor = .darkGray
            tabBarController.tabBar.tintColor = UIColor(red: 0, green: 90, blue: 0,alpha: 1.0)
            tabBarController.tabBar.unselectedItemTintColor = .white
            self.present(tabBarController, animated: false)
        })
    }
}

