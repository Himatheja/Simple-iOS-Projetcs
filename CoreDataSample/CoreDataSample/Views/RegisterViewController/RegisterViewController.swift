//
//  RegisterViewController.swift
//  CoreDataSample
//
//  Created by Divum on 15/02/19.
//  Copyright © 2019 Divum. All rights reserved.
//

import UIKit
import CoreData

class RegisterViewController: UIViewController {
    
    var people: [Person] = []
    
    @IBOutlet weak var nameTextView: CustomTextFieldView!
    @IBOutlet weak var mailTextView: CustomTextFieldView!
    @IBOutlet weak var passwordTextView: CustomTextFieldView!    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupContainer()
        setupViews()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        //TODO
    }
    
    func setupContainer() {
        self.navigationItem.title = "REGISTER"
    }
    
    func setupViews(){
        nameTextView.setView(for: "name")
        mailTextView.setView(for:  "mail")
        passwordTextView.setView(for: "password")
    }
    
    func getValues(){
        People.name = nameTextView.getTextFromFields()
        People.mail = mailTextView.getTextFromFields()
        People.password = passwordTextView.getTextFromFields()
    }
    
    //MARK:- Actions
    
    
    @IBAction func onSave_Clicked(_ sender: Any) {
        
        getValues()
        
        guard let  appDelegate = UIApplication.shared.delegate as? AppDelegate else {
            return
        }
        
        let context = appDelegate.persistentContainer.viewContext
        
        let entity = NSEntityDescription.entity(forEntityName: "Person", in: context)!
        if !(People.name.isEmpty) || !(People.mail.isEmpty) || !(People.password.isEmpty) {
            let newPerson = NSManagedObject(entity: entity, insertInto: context)
            
            newPerson.setValue(People.name, forKeyPath: "name")
            newPerson.setValue(People.mail, forKeyPath: "mail")
            newPerson.setValue(People.password, forKeyPath: "password")
            
            do{
                try context.save()
            }
            catch {
                print("failed saving")
            }
        } else {
            let alert = UIAlertController(title: "Error", message: "Enter Details", preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "Ok", style: .cancel, handler: nil))
            self.present(alert, animated: true, completion: nil)
        }
        
    }
    
    
    @IBAction func show_data(_ sender: Any) {
        let sb = UIStoryboard(name: "Main", bundle: nil)
        let vc = sb.instantiateViewController(withIdentifier: "RegisteredCandidatesViewController") as! RegisteredCandidatesViewController
        self.navigationController?.pushViewController(vc, animated: true)
    }
    
}

