//
//  NetworkService.swift
//  AssignmentView
//
//  Created by Berkay Demirören on 2.11.2022.
//

import Alamofire

let ENDPOINT = "https://httpbin.org/post"

protocol NetworkServiceInterface {
    static func sendLog(at: Int, withDurationInSeconds: Double) -> Bool
}

class NetworkService: NetworkServiceInterface {
    
    static func sendLog(at: Int, withDurationInSeconds: Double) -> Bool {
        print("Index \(at) durations: \((withDurationInSeconds*1000).rounded())")
        
        let parameters: [String: Double] = [
            "index": Double(at),
            "load_time": withDurationInSeconds,
        ]
        
        AF.request(ENDPOINT, method: .post, parameters: parameters, encoder: .json).responseJSON { response in
            switch response.result {
                case .success(let data):
                    print(data)
                
                case .failure(let err):
                    print(err)
            }
        }
        
        return true
    }
    
    
}
