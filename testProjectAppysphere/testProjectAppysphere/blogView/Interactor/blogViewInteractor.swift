//
//  blogViewInteractor.swift
//  testProjectAppysphere
//
//  Created by UdrinkIDev on 19/1/2562 BE.
//  Copyright © 2562 ANUPONG DORKKUM. All rights reserved.
//

import Foundation
import SwiftEventBus
import Alamofire

class BlogViewInteractor: NSObject {
    var blogData = [Blog]()
    func getBlogData() {
        let param = ["key":"123"]
        Alamofire.request("http://reduxblog.herokuapp.com/api/posts",method: .get,parameters: param).responseJSON { response in
            if let result = response.result.value {
                let jsonData = result as! [NSDictionary]
                
                for  dic in jsonData{
                    let blog = Blog(dic: dic as! [String : Any])
                    self.blogData.append(blog)
                }
               SwiftEventBus.post(BlogViewEvent.loadBlogDataComplete)
            }
        }
        
    }
    
    fileprivate func loadBlogData(){
        
        
    }
    
    func deleteBlogData(atId id:String) {
        
    }
}
