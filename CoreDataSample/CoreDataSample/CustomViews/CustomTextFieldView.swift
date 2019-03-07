//
//  CustomTextFieldView.swift
//  CoreDataSample
//
//  Created by Divum on 06/03/19.
//  Copyright © 2019 Divum. All rights reserved.
//

import UIKit

class CustomTextFieldView: UIView {
    
    let nibName = String(describing: CustomTextFieldView.self)
    
    @IBOutlet var containerView: UIView!
    @IBOutlet weak var customTextField: UITextField!
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        commoninit()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        commoninit()
    }
    
    func commoninit(){
        Bundle.main.loadNibNamed(nibName, owner: self, options: nil)
        setupContainerView()
    }
    
    private func setupContainerView(){
        addSubview(containerView)
        containerView.frame = bounds
        containerView.autoresizingMask = [ .flexibleWidth, .flexibleHeight]
    }
    
    func setView(for textField: String){
        if(textField == "password"){
            customTextField.isSecureTextEntry = true
        }
        customTextField.placeholder = String(describing: "Enter \(textField.capitalized)")
        
    }
    
    func getTextFromFields() -> String{
        return customTextField.text!
    }
    
}
