//
//  BaseResponse.swift
//  StudyQuizIOS
//
//  Created by Nguyen The Phuong on 12/11/17.
//  Copyright © 2017 Nguyen The Phuong. All rights reserved.
//

import Foundation

class BaseResponse<T: Decodable>: Decodable{
    var success: Bool?
    var value: T?
    var error: String?
}
