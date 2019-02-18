//
//  TopicsViewController.swift
//  TwitterForMe
//
//  Created by 守谷太一 on 2019/02/16.
//  Copyright © 2019 守谷太一. All rights reserved.
//

import UIKit
import SpriteKit
class TopicsViewController: UIViewController,ViewController {
    @IBOutlet weak var topicsView: SKView!
    typealias V = TopicsViewController
    static func make() -> V{
        let vc = R.storyboard.topicsViewController.instantiateInitialViewController()!
        return vc
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        topicsView.scene?.backgroundColor = .black
        bind()
    }
    private func bind(){
        let viewModel = TopicsViewModel()
        viewModel.output.allItem.drive(onNext: { [weak self] topics in
            topics.forEach({ topic in
                let circle = SKShapeNode.init(circleOfRadius: CGFloat(topic.topicsSize*10))
                circle.position = CGPoint(x: Int.random(in: 200...600), y: Int.random(in: 200...600))
                circle.name = "defaultCircle"
                circle.strokeColor = SKColor.black
                circle.glowWidth = 10.0
                circle.fillColor = SKColor.yellow
                circle.physicsBody = SKPhysicsBody(circleOfRadius: 40)
                self?.topicsView.scene?.addChild(circle)
            })
        })
    }
}
