//
//  Global.swift
//  lovinpet
//
//  Created by Hong Gao on 2017/11/14.
//  Copyright © 2017年 Hong Gao. All rights reserved.
//

import Foundation
import UIKit

class Global {
    static let sharedInstance = Global()
    
    private init() {
        
    }
    
    var email: String!
    var avatar: UIImage?
    var nickname: String?
    var postArray = [Post]()
}

