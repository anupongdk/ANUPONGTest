//
//  addContentViewController.swift
//  testProjectAppysphere
//
//  Created by UdrinkIDev on 21/1/2562 BE.
//  Copyright © 2562 ANUPONG DORKKUM. All rights reserved.
//

import UIKit

class addContentViewController: UIViewController {
    @IBOutlet weak var svContainLayout: UIScrollView!
    @IBOutlet weak var vScrollContent: UIView!
    @IBOutlet weak var tfTitle: UITextField!
    @IBOutlet weak var tfCategory: UITextField!
    @IBOutlet weak var tvContent: UITextView!
    
    @IBOutlet weak var constAvoidKeyboard: NSLayoutConstraint!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        bindingUI()
    
        
        // Do any additional setup after loading the view.
    }

    func bindingUI() {
      self.hideKeyboardWhenTappedAround()
        
        NotificationCenter.default.addObserver(
            self,
            selector: #selector(keyboardWillShow),
            name: UIResponder.keyboardWillShowNotification,
            object: nil
        )
        NotificationCenter.default.addObserver(
            self,
            selector: #selector(keyboardWillHide),
            name: UIResponder.keyboardWillHideNotification,
            object: nil
        )
        
       
    }
    
    
    @IBAction func tapClose(_ sender: Any) {
        
    }
    
    @IBAction func tapUpload(_ sender: Any) {
        
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

extension addContentViewController{
    
    @objc func keyboardWillShow(_ notification: Notification) {
        if let keyboardFrame: NSValue = notification.userInfo?[UIResponder.keyboardFrameEndUserInfoKey] as? NSValue {
            let keyboardRectangle = keyboardFrame.cgRectValue
            
            UIView.animate(withDuration: Double(0.2), animations: {
                self.constAvoidKeyboard.constant = keyboardRectangle.height + 8
                self.view.layoutIfNeeded()
            })
            
        }
    }
    
    @objc func keyboardWillHide(_ notification: Notification) {
        if let keyboardFrame: NSValue = notification.userInfo?[UIResponder.keyboardFrameEndUserInfoKey] as? NSValue {
            _ = keyboardFrame.cgRectValue
            UIView.animate(withDuration: Double(0.2), animations: {
                self.constAvoidKeyboard.constant =  8
                self.view.layoutIfNeeded()
            })
        }
    }
    
}


