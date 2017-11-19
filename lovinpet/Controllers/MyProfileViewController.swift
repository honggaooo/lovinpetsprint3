//
//  MyProfileViewController.swift
//  lovinpet
//
//  Created by Hong Gao on 2017/11/14.
//  Copyright © 2017年 Hong Gao. All rights reserved.
//

import UIKit

class MyProfileViewController: UIViewController, EditProtocal {

    @IBOutlet weak var avatarImageView: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var ageLabel: UILabel!
    @IBOutlet weak var breedLabel: UILabel!
    @IBOutlet weak var genderLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        avatarImageView.layer.masksToBounds = true
        avatarImageView.backgroundColor = UIColor.white
        avatarImageView.layer.borderColor = UIColor.gray.cgColor
        avatarImageView.layer.borderWidth = 1
        avatarImageView.layer.cornerRadius = avatarImageView.frame.size.height / 2
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "editProfile" {
            let controller = segue.destination as! EditProfileViewController
            controller.delegate = self
        }
    }
    
    func save(name: String?, breed: String?, age: String?, gender: String?, image: UIImage?) {
        nameLabel.text = name
        nameLabel.sizeToFit()
        breedLabel.text = breed
        breedLabel.sizeToFit()
        ageLabel.text = age
        ageLabel.sizeToFit()
        genderLabel.text = gender
        genderLabel.sizeToFit()
        if let i = image {
            avatarImageView.image = i
        }
    }

}
