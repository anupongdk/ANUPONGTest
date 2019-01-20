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
    var categories : [String]!
    var content : String!
    
    init(dic : [String: Any] ) {
        self.id = dic["id"] as? Int ?? 0
        self.title = dic["title"] as? String ?? ""
//        self.categories = dic["categories"] as? Array ?? [String]
//        self.content = dic["content"]
    }
}
