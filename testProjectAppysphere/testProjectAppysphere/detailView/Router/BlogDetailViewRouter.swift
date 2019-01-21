//
//  BlogDetailViewRouter.swift
//  testProjectAppysphere
//
//  Created by UdrinkIDev on 20/1/2562 BE.
//  Copyright © 2562 ANUPONG DORKKUM. All rights reserved.
//

import Foundation

class BlogDetailViewRouter:NSObject{
    var view:BlogDetailView?
    
    func createBlogDetailViewRouter(with view:BlogDetailView){
        self.view = view
    }
    func  goBack() {
        self.view?.dismiss(animated: true, completion: nil)
    }
}
