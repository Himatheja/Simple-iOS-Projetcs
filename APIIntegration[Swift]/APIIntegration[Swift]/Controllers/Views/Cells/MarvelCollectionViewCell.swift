//
//  MarvelCollectionViewCell.swift
//  APIIntegration[Swift]
//
//  Created by Divum on 08/05/19.
//  Copyright © 2019 Divum. All rights reserved.
//

import UIKit
import SDWebImage

class MarvelCollectionViewCell: UICollectionViewCell {

    static let identifier = String(describing: MarvelCollectionViewCell.self)

    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var realNameLabel: UILabel!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var teamLabel: UILabel!


    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    func configureCell(marvelDetails: MarvelDetailsModel) {
        titleLabel.text = "MARVEL HERO"
        imageView.sd_setImage(with: URL(string: marvelDetails.imageurl ?? ""), completed: nil)
        realNameLabel.text = marvelDetails.realname
        nameLabel.text = marvelDetails.name
        teamLabel.text = marvelDetails.team
    }

}
