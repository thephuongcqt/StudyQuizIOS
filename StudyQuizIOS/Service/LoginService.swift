//
//  LoginService.swift
//  StudyQuizIOS
//
//  Created by Nguyen The Phuong on 12/11/17.
//  Copyright © 2017 Nguyen The Phuong. All rights reserved.
//

import Foundation
import Alamofire

class LoginService{
    
    static let shared = LoginService()
    private init(){
        
    }
    
    func login(username: String, password: String){
        let urlString = baseUrl + "User/PostLogin"
        let params = ["Username" : username, "Password": password]
        if let url = URL(string: urlString){
            let service = BaseService.shared
            service.requestJSON(with: url, method: .post, parameters: params, completion: { (result: BaseResponse<User>?, error) in
                print(result)
            })
        }
    }
}
