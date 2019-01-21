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
            self.view!.reloadTable()
        }
        SwiftEventBus.onMainThread(interactor, name: BlogViewEvent.loadBlogDataFail) { Notification in
            self.view?.reloadTable()
        }

        SwiftEventBus.onMainThread(self, name: AddContentEvent.postContentComplete) { Notification in
            self.loadData()
        }
        
        SwiftEventBus.onMainThread(self, name: BlogDetailViewEvent.deleteBlogDetailCompplete) { Notification in
            self.loadData()
        }
        
        
    }
    
    func gotoViewDetail(id:Int) {
        self.router.gotoBlogDetailView(id: id)
    }
    
    func gotoAddView() {
        self.router.gotoAddBlogView()
    }
    
    
    func loadData()  {
        interactor.getBlogData()
    }
   
    
}
