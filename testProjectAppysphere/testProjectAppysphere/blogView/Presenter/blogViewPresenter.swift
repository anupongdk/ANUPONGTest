//
//  blogViewPresenter.swift
//  testProjectAppysphere
//
//  Created by UdrinkIDev on 19/1/2562 BE.
//  Copyright © 2562 ANUPONG DORKKUM. All rights reserved.
//

import Foundation
import SwiftEventBus

class BlogViewPresenter: NSObject {
    
    var view:BlogViewController?
    var router = BlogViewRouter()
    var interactor = BlogViewInteractor()
    
    func createViewPresenter(withView view:BlogViewController) {
        self.view = view
        self.router.createBlogListViewModule(viewRef: view)
        registerEVB()
        
    }
    
    func registerEVB(){
        SwiftEventBus.onMainThread(interactor, name: BlogViewEvent.loadBlogDataComplete) { Notification in
            self.view?.blogListData = self.interactor.blogData
            self.view?.reloadTable()
        }
        SwiftEventBus.onMainThread(interactor, name: BlogViewEvent.loadBlogDataFail) { Notification in
            self.view?.reloadTable()
        }
        SwiftEventBus.onMainThread(interactor, name: BlogViewEvent.goDetailView) { Notification in
            self.router.gotoBlogDetailView()
        }
        
    }
    
    func loadData()  {
        interactor.getBlogData()
    }
   
    
}
