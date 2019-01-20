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
        registerEVB()
    }
    
    func registerEVB(){
        SwiftEventBus.onMainThread(interactor, name: BlogViewEvent.loadBlogDataComplete) { Notification in
            
        }
        SwiftEventBus.onMainThread(interactor, name: BlogViewEvent.loadBlogDataFail) { Notification in
            self.view?.reloadTable()
        }
        
    }
    
    func loadData()  {
        interactor.getBlogData()
    }
   
    
}
