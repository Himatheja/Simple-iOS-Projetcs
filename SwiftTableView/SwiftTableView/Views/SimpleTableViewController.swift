//
//  SimpleTableViewController.swift
//  SwiftTableView
//
//  Created by Divum on 12/03/19.
//  Copyright © 2019 Divum. All rights reserved.
//

import UIKit

class SimpleTableViewController: UITableViewController {

    @IBOutlet weak var sampleTableView: UITableView!

    var array = ["Apple", "Orange", "PineApple", "Pomegranate", "Grapes", "Watermelon", "Guava", "Strawberry"]

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        sampleTableView.delegate = self
        sampleTableView.dataSource = self
        sampleTableView.register(UINib(nibName: CustomTableViewCell.identifier, bundle: nil), forCellReuseIdentifier: CustomTableViewCell.identifier)
    }

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return array.count
        //TODO
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "CustomTableViewCell", for: indexPath)
        guard let customCell = cell as? CustomTableViewCell else { return cell }
        customCell.stextLabel?.text = array[indexPath.row]
        return customCell
    }

    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return UITableView.automaticDimension
    }

}
