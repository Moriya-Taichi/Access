//
//  TimeLineViewControllerCell.swift
//  TwitterForMe
//
//  Created by 守谷太一 on 2019/02/08.
//  Copyright © 2019 守谷太一. All rights reserved.
//

import UIKit
class TimeLineViewControllerCell: UITableViewCell {
    @IBOutlet weak var userName: UILabel!
    @IBOutlet weak var userId: UILabel!
    @IBOutlet weak var userIcon: UIImageView!
    @IBOutlet weak var tweetText: UILabel!
    @IBOutlet weak var replyButton: UIButton!
    @IBOutlet weak var retweetButton: UIButton!
    @IBOutlet weak var favoriteButton: UIButton!
    @IBOutlet weak var tweetImage: UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
}
