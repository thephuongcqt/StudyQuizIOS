//
//  BaseResponse.swift
//  StudyQuizIOS
//
//  Created by Nguyen The Phuong on 12/11/17.
//  Copyright © 2017 Nguyen The Phuong. All rights reserved.
//

import Foundation
import ObjectMapper

class BaseResponse<T: Mappable>: Mappable{
    var success: Bool?
    var value: T?
    var error: String?
    
    required init?(map: Map) {
    }
    
    func mapping(map: Map) {
        success <- map["success"]
        value <- map["value"]
        error <- map["error"]
    }
}


typealias loginResultType = ResultType<BaseResponse<User>>
typealias completionHandler<T> = (T) -> ()
