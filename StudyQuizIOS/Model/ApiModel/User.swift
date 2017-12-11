//
//  User.swift
//  StudyQuizIOS
//
//  Created by Nguyen The Phuong on 12/11/17.
//  Copyright © 2017 Nguyen The Phuong. All rights reserved.
//

import Foundation

class User: Decodable {
    var UserId: Int?
    var Username: String?
    var Password: String?
    var Email: String?
    var Name: String?
    var Role: Int?
    var CreatedDate: String?
}
