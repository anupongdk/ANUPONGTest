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
        let param = Blog.asDictionary
        Alamofire.request("http://reduxblog.herokuapp.com/api/posts",method: .post,parameters: param ).responseJSON { response in

            
            if response.result.isSuccess {
                 SwiftEventBus.post(AddContentEvent.postContentComplete)
            }
        }
        
    }
    
}
