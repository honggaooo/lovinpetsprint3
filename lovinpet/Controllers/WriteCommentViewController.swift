//
//  WriteCommentViewController.swift
//  lovinpet
//
//  Created by Hong Gao on 2017/11/14.
//  Copyright © 2017年 Hong Gao. All rights reserved.
//

import UIKit

class WriteCommentViewController: UIViewController {

    @IBOutlet weak var commentLabel: UITextField!
    var post: Post!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    @IBAction func submitClicked(_ sender: Any) {
        if commentLabel.text == nil || commentLabel.text == "" {
            return
        }
        
        post.comment.append(commentLabel.text!)
        self.navigationController?.popViewController(animated: true)
    }
}
