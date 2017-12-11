
//
//  BaseService.swift
//  DemoSwift
//
//  Created by Nguyen The Phuong on 12/11/17.
//  Copyright © 2017 Nguyen The Phuong. All rights reserved.
//

import Foundation
import Alamofire

class BaseService{
    static let shared = BaseService()
    
    func requestJSON(with url: URL, completion: @escaping (_ dictionary: [String: Any]?, _ success: Bool, _ error: Error?) -> ()){
        Alamofire.request(url).responseJSON { (response) in
            if response.error != nil{
                completion(nil, false, response.error)
                return
            }
            if let dictionary = response.result.value as? [String: Any]{
                completion(dictionary, true, nil)
            } else{
                completion(nil, false, nil)
            }
        }
    }
    
    func requestJSON<T: Decodable>(with url: URL, completion: @escaping (_ result: T?, _ success: Bool, _ error: Error?) -> ()){
        Alamofire.request(url).responseJSON { (response) in
            if response.error != nil{
                completion(nil, false, response.error)
                return
            }
            
            if response.result.isSuccess, let data = response.data{
                do{
                    let result = try JSONDecoder().decode(T.self, from: data)
                    completion(result, true, nil)
                    return
                }
                catch _ {
                    // handle
                }
            }
            completion(nil, false, nil)
        }
    }
}
