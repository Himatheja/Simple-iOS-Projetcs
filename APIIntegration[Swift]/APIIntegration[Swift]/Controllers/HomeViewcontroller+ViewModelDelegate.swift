//
//  HomeViewcontroller+ViewModelDelegate.swift
//  APIIntegration[Swift]
//
//  Created by Divum on 08/05/19.
//  Copyright © 2019 Divum. All rights reserved.
//

import Foundation

extension HomeViewController: MarvelDetailsViewModelDelegate {

    func getResponse(_ response: [MarvelDetailsModel]) {
        self.reloadContainerView(response)
    }

}
