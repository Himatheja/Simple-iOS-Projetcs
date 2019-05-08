//
//  CustomTableViewCell.swift
//  SwiftTableView
//
//  Created by Divum on 12/03/19.
//  Copyright © 2019 Divum. All rights reserved.
//

import UIKit

class CustomTableViewCell: UITableViewCell {

    static let identifier = String(describing: CustomTableViewCell.self)

    @IBOutlet weak var stextLabel: UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
}
