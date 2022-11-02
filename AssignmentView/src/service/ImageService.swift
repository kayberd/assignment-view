//
//  ImageService.swift
//  AssignmentView
//
//  Created by Berkay Demirören on 1.11.2022.
//

import Foundation
import UIKit
import Kingfisher

protocol ImageServiceInterface {
    static func getAll() -> [UIImageView]
    static func getOne(position: Int) -> UIView?
}


class ImageService: ImageServiceInterface {
    
    static func getAll() -> [UIImageView] {
        return []
    }
    
    static func getOne(position: Int) -> UIView? {
        
        let imageView = UIImageView()
        let url = MediaDataRepository.getOneUrl(position: position)
        
        let time0 = NSDate().timeIntervalSince1970
        KF.url(url)
          .cacheMemoryOnly()
          .fade(duration: 0.25)
          .onSuccess { result in
              let time1 = NSDate().timeIntervalSince1970
              NetworkService.sendLog(at: position, withDurationInSeconds: time1 - time0)
          }
          .onFailure { error in
          }
          .set(to: imageView)
        
        return imageView


    }
}
    
