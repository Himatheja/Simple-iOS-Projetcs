//
//  MarvelDetailsViewModel.swift
//  APIIntegration[Swift]
//
//  Created by Divum on 08/05/19.
//  Copyright © 2019 Divum. All rights reserved.
//

import Foundation

protocol MarvelDetailsViewModelDelegate: class {
    func getResponse(_ response: [MarvelDetailsModel])
}
class MarvelDetailsViewModel {

    weak var delegate: MarvelDetailsViewModelDelegate?

    func getDetails() {
        MarvelDetailsInterface.sharedInstance.getDetails { (result) in
            self.delegate?.getResponse(result)
        }
    }
}
