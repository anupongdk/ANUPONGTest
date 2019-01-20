//
//  ViewController.swift
//  testProjectAppysphere
//
//  Created by UdrinkIDev on 19/1/2562 BE.
//  Copyright © 2562 ANUPONG DORKKUM. All rights reserved.
//

import UIKit

class BlogViewController: UIViewController {

    var presenter:BlogViewPresenter?
    var blogListData:[Blog]?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        blidingPresenter()
    }
    
    func blidingPresenter() {
        presenter = BlogViewPresenter()
        presenter?.createViewPresenter(withView: self)
        presenter?.loadData()
    }
    
    func reloadTable() {
        
    }
    
    

}

extension BlogViewController:UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        return UITableViewCell()
    }
    
    
}

