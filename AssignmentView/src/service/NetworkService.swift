//
//  NetworkService.swift
//  AssignmentView
//
//  Created by Berkay Demirören on 2.11.2022.
//

import Foundation

protocol NetworkServiceInterface {
    static func sendLog(at: Int, withDurationInSeconds: Double) -> Bool
}

class NetworkService: NetworkServiceInterface {
    
    static func sendLog(at: Int, withDurationInSeconds: Double) -> Bool {
        // TODO: Add send request and handle response logic
        print("Index \(at) durations: \((withDurationInSeconds*1000).rounded())")
        return true
    }
    
    
}
