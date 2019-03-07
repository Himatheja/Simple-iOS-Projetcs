//
//  PersonTableViewCell.swift
//  CoreDataSample
//
//  Created by Divum on 15/02/19.
//  Copyright © 2019 Divum. All rights reserved.
//

import UIKit

class PersonTableViewCell: UITableViewCell {
    
    static var identifier = String(describing: PersonTableViewCell.self)

    @IBOutlet weak var nameLabel: UILabel!    
    @IBOutlet weak var mailLabel: UILabel!
    @IBOutlet weak var passwordLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func configureCell(with person: Person){
        nameLabel.text = person.name
        mailLabel.text = person.mail
        passwordLabel.text = person.password
    }
}
