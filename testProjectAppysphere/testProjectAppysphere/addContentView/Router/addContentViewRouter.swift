//
//  addContentViewRouter.swift
//  testProjectAppysphere
//
//  Created by UdrinkIDev on 21/1/2562 BE.
//  Copyright © 2562 ANUPONG DORKKUM. All rights reserved.
//

import Foundation

class addContentViewRouter: NSObject {
    var view:addContentViewController?
    func createRouter(withView view:addContentViewController) {
        self.view = view
    }
    func goBack() {
        self.view?.dismiss(animated: true, completion: nil)
    }
}
