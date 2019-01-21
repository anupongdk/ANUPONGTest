//
//  addContentViewPresenter.swift
//  testProjectAppysphere
//
//  Created by UdrinkIDev on 21/1/2562 BE.
//  Copyright © 2562 ANUPONG DORKKUM. All rights reserved.
//

import Foundation

class AddContentViewPresenter: NSObject {
    var view:addContentViewController?
    
    func createPresenter(withView viewRef:addContentViewController){
        self.view = viewRef
    }
}
