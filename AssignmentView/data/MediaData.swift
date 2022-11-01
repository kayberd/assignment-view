//
//  MediaData.swift
//  AssignmentView
//
//  Created by Berkay Demirören on 1.11.2022.
//

import Foundation

class MediaData {
    
    private static var urls:[URL] = []
    
    private static let data = [
        "https://db62cod6cnasq.cloudfront.net/user-media/0/image1-500kb.png",
        "https://db62cod6cnasq.cloudfront.net/user-media/0/image2-500kb.png",
        "https://db62cod6cnasq.cloudfront.net/user-media/0/image3-500kb.png",
        "https://db62cod6cnasq.cloudfront.net/user-media/0/image4-500kb.png",
        "https://db62cod6cnasq.cloudfront.net/user-media/0/image1-1mb.png",
        "https://db62cod6cnasq.cloudfront.net/user-media/0/image2-1mb.png",
        "https://db62cod6cnasq.cloudfront.net/user-media/0/image3-1mb.png",
        "https://db62cod6cnasq.cloudfront.net/user-media/0/image4-1mb.png",
        "https://db62cod6cnasq.cloudfront.net/user-media/0/image1-1_5mb.png",
        "https://db62cod6cnasq.cloudfront.net/user-media/0/image2-1_5mb.png",
        "https://db62cod6cnasq.cloudfront.net/user-media/0/image3-1_5mb.png",
        "https://db62cod6cnasq.cloudfront.net/user-media/0/image4-1_5mb.png",
        "https://db62cod6cnasq.cloudfront.net/user-media/0/image1-2mb.png",
        "https://db62cod6cnasq.cloudfront.net/user-media/0/image2-2mb.png",
        "https://db62cod6cnasq.cloudfront.net/user-media/0/image3-2mb.png",
        "https://db62cod6cnasq.cloudfront.net/user-media/0/image4-2mb.png",
        "https://db62cod6cnasq.cloudfront.net/user-media/0/image1-3mb.png",
        "https://db62cod6cnasq.cloudfront.net/user-media/0/image2-3mb.png",
        "https://db62cod6cnasq.cloudfront.net/user-media/0/image3-3mb.png",
        "https://db62cod6cnasq.cloudfront.net/user-media/0/image4-3mb.png",
        "https://db62cod6cnasq.cloudfront.net/user-media/0/image1-5mb.png",
        "https://db62cod6cnasq.cloudfront.net/user-media/0/image2-5mb.png",
        "https://db62cod6cnasq.cloudfront.net/user-media/0/image3-5mb.png",
        "https://db62cod6cnasq.cloudfront.net/user-media/0/image4-5mb.png"
    ]
    
    static func getAll() -> [URL] {
        if(urls.isEmpty) {
            for datum in self.data {
                urls.append(URL(string: datum)!)
            }
        }
        return urls
    }
}
