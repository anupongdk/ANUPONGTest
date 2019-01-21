//
//  blogViewRouter.swift
//  testProjectAppysphere
//
//  Created by UdrinkIDev on 19/1/2562 BE.
//  Copyright © 2562 ANUPONG DORKKUM. All rights reserved.
//

import Foundation

class BlogViewRouter :NSObject {
    var view:BlogViewController?
     func createBlogListViewModule(viewRef:BlogViewController){
        self.view = viewRef
    }
    
    func gotoBlogDetailView(id:Int) {
        let detailView = BlogDetailView()
        detailView.id = id
        self.view?.present(detailView, animated: true, completion: nil);
    }
    
    func gotoAddBlogView() {
        
    }
}


