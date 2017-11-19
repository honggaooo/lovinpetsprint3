//
//  FeedTableViewCell.swift
//  lovinpet
//
//  Created by Hong Gao on 2017/11/14.
//  Copyright © 2017年 Hong Gao. All rights reserved.
//

import UIKit

protocol CommentProtocal {
    func gotoComment(post: Post)
}

class FeedTableViewCell: UITableViewCell {

    @IBOutlet weak var avatarImageView: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var feedImage: UIImageView!
    @IBOutlet weak var nicknameLabel: UILabel!
    
    private var post: Post?
    
    var commentProtocal: CommentProtocal?

    func setPost(post: Post) {
        self.post = post
        titleLabel.text = post.title
        feedImage.image = post.image
        
        nicknameLabel.text = Global.sharedInstance.nickname
        avatarImageView.image = Global.sharedInstance.avatar
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        feedImage.layer.masksToBounds = true
        
        avatarImageView.layer.masksToBounds = true
        avatarImageView.backgroundColor = UIColor.white
        avatarImageView.layer.borderColor = UIColor.gray.cgColor
        avatarImageView.layer.borderWidth = 1
        avatarImageView.layer.cornerRadius = avatarImageView.frame.size.height / 2
    }
    
    @IBAction func commentClicked(_ sender: Any) {
        if let pro = self.commentProtocal {
            pro.gotoComment(post: post!)
        }
    }
}
