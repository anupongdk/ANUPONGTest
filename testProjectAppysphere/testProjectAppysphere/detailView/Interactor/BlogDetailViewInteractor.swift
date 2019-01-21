//
//  BlogDetailViewInteractor.swift
//  testProjectAppysphere
//
//  Created by UdrinkIDev on 20/1/2562 BE.
//  Copyright © 2562 ANUPONG DORKKUM. All rights reserved.
//

import Foundation
import SwiftEventBus
import Alamofire
class BlogDetailViewInteractor: NSObject {
    var blogData:Blog?
    func getBlogData(At id:Int) {
        Alamofire.request("http://reduxblog.herokuapp.com/api/posts/\(id)",method: .get).responseJSON { response in
            if let result = response.result.value {
                let jsonData = result as! NSDictionary
                    self.blogData = Blog(dic: jsonData as! [String : Any])
                SwiftEventBus.post(BlogDetailViewEvent.loadBlogDetailComplete)
            }
        }
        
    }
    
    func deleteBlogData(At id:Int) {
        Alamofire.request("http://reduxblog.herokuapp.com/api/posts/\(id)",method: .get).responseJSON { response in
            if response.result.isSuccess{
                SwiftEventBus.post(BlogDetailViewEvent.deleteBlogDetailCompplete)
            }
            
            
        }
        
    }
    
}
