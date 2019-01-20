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
    @IBOutlet weak var mainTable: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        bindingPresenter()
        bindingUI()
    }
    
    func bindingPresenter() {
        presenter = BlogViewPresenter()
        presenter?.createViewPresenter(withView: self)
        presenter?.loadData()
    }
    func bindingUI() {
        
        mainTable.delegate = self
        mainTable.dataSource = self
        mainTable.register(UINib(nibName: "BlogTableViewCell", bundle: nil), forCellReuseIdentifier: "blogCell")
        mainTable.rowHeight = UITableView.automaticDimension
        mainTable.estimatedRowHeight = UITableView.automaticDimension
        mainTable.reloadData()
    }
    
    
    func reloadTable() {
        mainTable.reloadData()
    }
    
    

}

extension BlogViewController:UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return blogListData?.count ?? 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let blogCell:BlogTableViewCell = tableView.dequeueReusableCell(withIdentifier: "blogCell") as! BlogTableViewCell
        blogCell.lblTitle.text = "Title: \(blogListData?[indexPath.row].title ?? "")"
        blogCell.lblContent.text = "\(blogListData?[indexPath.row].content ?? "")"
        blogCell.lblCategory.text = blogListData?[indexPath.row].categories
        
        return blogCell
    }
    
 
}

