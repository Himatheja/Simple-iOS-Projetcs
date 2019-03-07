//
//  RegisteredCandidatesViewController+UITableView.swift
//  CoreDataSample
//
//  Created by Divum on 15/02/19.
//  Copyright © 2019 Divum. All rights reserved.
//

import UIKit

extension RegisteredCandidatesViewController : UITableViewDelegate, UITableViewDataSource {

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return personsArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
      
        let cell = tableView.dequeueReusableCell(withIdentifier: PersonTableViewCell.identifier, for: indexPath) as! PersonTableViewCell
        cell.configureCell(with: personsArray[indexPath.row])
        return cell
        
    }
    
}
