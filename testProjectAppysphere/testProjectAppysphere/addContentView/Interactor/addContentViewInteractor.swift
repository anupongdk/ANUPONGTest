//
//  addContentViewInteractor.swift
//  testProjectAppysphere
//
//  Created by UdrinkIDev on 21/1/2562 BE.
//  Copyright © 2562 ANUPONG DORKKUM. All rights reserved.
//

import Foundation

import SwiftEventBus
import Alamofire
class addContentViewInteractor: NSObject {
    var blogData:Blog?
    func postBlogData(With Blog:Blog) {
        Alamofire.request("http://reduxblog.herokuapp.com/api/posts/",method: .post).responseJSON { response in
            if let result = response.result.value {
                SwiftEventBus.post(BlogDetailViewEvent.loadBlogDetailComplete)
            }
        }
        
    }
    
}
