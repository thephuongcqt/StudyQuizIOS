//
//  LoginService.swift
//  StudyQuizIOS
//
//  Created by Nguyen The Phuong on 12/11/17.
//  Copyright © 2017 Nguyen The Phuong. All rights reserved.
//

import Foundation
import Alamofire
import AlamofireObjectMapper

class LoginService{
    
    static let shared = LoginService()
    private init(){
    }
    
    
    
    func login(username: String, password: String){
        let service = BaseService.shared
        let params = [paramUsername : username, paramPassword: password]
        if let url = service.getAbsoluteUrl(from: loginUrl){
//            service.requestJSON(with: url, method: .post, parameters: params, completion: { (result: BaseResponse<User>?, err) in
//                if let response = result{
//                    print(response.value!)
//                }
//            })
            service.postParams(with: url, parameters: params, completion: { (result: ResultType<BaseResponse<User>>) in
                
            })
        }
    }
    
    func login(with params: [String: Any], completion: @escaping completionHandler<loginResultType>){
        let service = BaseService.shared
        if let url = service.getAbsoluteUrl(from: loginUrl){
            service.postParams(with: url, parameters: params, completion: { (result: loginResultType) in
                completion(result)
            })
        }
    }
}
