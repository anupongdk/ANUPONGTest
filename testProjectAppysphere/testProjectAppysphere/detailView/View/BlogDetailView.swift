//
//  BlogDetailView.swift
//  testProjectAppysphere
//
//  Created by UdrinkIDev on 20/1/2562 BE.
//  Copyright © 2562 ANUPONG DORKKUM. All rights reserved.
//

import UIKit

class BlogDetailView: UIViewController {

    var id:Int?
    var blogData:Blog?
    var presenter:BlogDetailViewPresenter?
    @IBOutlet weak var lblTitle: UILabel!
    @IBOutlet weak var tvContent: UITextView!
    @IBOutlet weak var lblCategory: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        presenter = BlogDetailViewPresenter()
        presenter?.createViewPresenter(withView: self)
    }

    func bindingUI() {
        lblTitle.text = blogData?.title
        tvContent.text = blogData?.content
        lblCategory.text = blogData?.categories
    }

    @IBAction func tapClose(_ sender: Any) {
        presenter?.goBack()
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
