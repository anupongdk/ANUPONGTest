//
//  addContentViewPresenter.swift
//  testProjectAppysphere
//
//  Created by UdrinkIDev on 21/1/2562 BE.
//  Copyright © 2562 ANUPONG DORKKUM. All rights reserved.
//

import Foundation
import SwiftEventBus

class AddContentViewPresenter: NSObject {
    var view:addContentViewController?
    var interactor = addContentViewInteractor()
    var router:addContentViewRouter?
    
    func createPresenter(withView viewRef:addContentViewController){
        self.view = viewRef
        self.router = addContentViewRouter()
        self.router?.createRouter(withView: viewRef)

        registerEVB()
    }
    
    func goBack(){
        router?.goBack()
    }
    
    func upload(with blog:Blog){
        self.interactor.postBlogData(With: blog)
    }
    
    func registerEVB(){
        SwiftEventBus.onMainThread(interactor, name: AddContentEvent.postContentComplete) { Notification in
            self.goBack()
        }
        SwiftEventBus.onMainThread(interactor, name: AddContentEvent.postContentFail) { Notification in
           
        }
        
    }
    
}
