//
//  BlogDetailViewPresenter.swift
//  testProjectAppysphere
//
//  Created by UdrinkIDev on 20/1/2562 BE.
//  Copyright © 2562 ANUPONG DORKKUM. All rights reserved.
//

import Foundation
import SwiftEventBus

class BlogDetailViewPresenter: NSObject {
    var view:BlogDetailView?
    var router = BlogDetailViewRouter()
    var interactor = BlogDetailViewInteractor()
    var currentContentId:Int?
     func createViewPresenter(withView view:BlogDetailView) {
        self.view = view
        self.router.createBlogDetailViewRouter(with:view)
        self.registerEVB()
        loadData()
    }
    
    func loadData(){
        self.interactor.getBlogData(At: view?.id ?? 0)
        
    }
    
    func registerEVB() {
        SwiftEventBus.onMainThread(interactor, name: BlogDetailViewEvent.loadBlogDetailComplete) { Notification in
            self.view?.blogData = self.interactor.blogData
             self.view?.bindingUI()
            }
    }
    
    func goBack() {
        self.router.goBack()
    }
    
}
