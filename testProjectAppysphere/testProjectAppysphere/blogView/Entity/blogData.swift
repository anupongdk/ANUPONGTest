//
//  blogData.swift
//  testProjectAppysphere
//
//  Created by UdrinkIDev on 19/1/2562 BE.
//  Copyright © 2562 ANUPONG DORKKUM. All rights reserved.
//

import Foundation

struct Blog {
    var id : Int!
    var title : String!
    var categories : String!
    var content : String!
    
    init(dic : [String: Any] ) {
        self.id = dic["id"] as? Int ?? 0
        self.title = dic["title"] as? String ?? ""
        self.categories = dic["categories"] as? String ?? ""
        self.content = dic["content"] as? String ?? ""
    }
    
    var asDictionary: [String: Any] {
        return [
            "id" : self.id,
            "title" : self.title,
            "categories" : self.categories,
            "content" : self.content
        ]
    }
}
