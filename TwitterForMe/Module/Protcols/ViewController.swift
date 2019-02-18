//
//  ViewController.swift
//  TwitterForMe
//
//  Created by 守谷太一 on 2019/02/02.
//  Copyright © 2019年 守谷太一. All rights reserved.
//

import UIKit
protocol ViewController where Self:UIViewController {
    associatedtype V: UIViewController
    static func make() -> V
}
extension ViewController{
    static func make() -> V{
        return V()
    }
}
