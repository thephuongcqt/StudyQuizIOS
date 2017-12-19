//
//  User.swift
//  StudyQuizIOS
//
//  Created by Nguyen The Phuong on 12/11/17.
//  Copyright © 2017 Nguyen The Phuong. All rights reserved.
//

import Foundation
import ObjectMapper

class User: Mappable {
    var userId: Int?
    var username: String?
    var password: String?
    var email: String?
    var name: String?
    var role: Int?
    var createdDate: Date?
//    var feedbacks: [String]?
//    var monthlyReports: [String]?
//    var studiedQuestions: [String]?
    
    required init?(map: Map) {        
    }
    
    func mapping(map: Map) {
        userId <- map["UserId"]
        username <- map["Username"]
        password <- map["Password"]
        email <- map["Email"]
        name <- map["Name"]
        role <- map["Role"]
//        createdDate <- map["CreatedDate"]
//        feedbacks <- map["Feedbacks"]
//        monthlyReports <- map["MonthlyReports"]
//        studiedQuestions <- map["StudiedQuestions"]
        createdDate <- (map["CreatedDate"], BaseDateTransform())
    }
}


class Dm<T: Mappable>: Mappable{
    var value: T?
    required init?(map: Map) {
        
    }
    
    func mapping(map: Map) {
        
    }
    
    func test<U: Mappable>() -> U?{
        return nil
    }
}
