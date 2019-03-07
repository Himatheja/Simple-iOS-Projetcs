//
//  RegisteredCandidatesViewController.swift
//  CoreDataSample
//
//  Created by Divum on 15/02/19.
//  Copyright © 2019 Divum. All rights reserved.
//

import UIKit
import CoreData

class RegisteredCandidatesViewController: UIViewController {
    
    var personsArray: [Person] = []

    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        setupTableView()
        setupData()
    }
    
    func setupTableView(){
        tableView.delegate = self
        tableView.dataSource = self
        tableView.register(UINib(nibName: PersonTableViewCell.identifier, bundle: nil), forCellReuseIdentifier: PersonTableViewCell.identifier)
        tableView.reloadData()
    }
    
    func setupData() {
        guard let appDelegate =
            UIApplication.shared.delegate as? AppDelegate else {
                return
        }

        let managedContext =
            appDelegate.persistentContainer.viewContext

        //2
        let fetchRequest =
            NSFetchRequest<NSManagedObject>(entityName: "Person")

        //3
        do {
            personsArray = try managedContext.fetch(fetchRequest) as! [Person]
        } catch let error as NSError {
            print("Could not fetch. \(error), \(error.userInfo)")
        }
    }

}
