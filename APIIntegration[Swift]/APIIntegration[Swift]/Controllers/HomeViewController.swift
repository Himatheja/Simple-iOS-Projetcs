//
//  HomeViewController.swift
//  APIIntegration[Swift]
//
//  Created by Divum on 07/05/19.
//  Copyright © 2019 Divum. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController {

    @IBOutlet weak var homeContainerView: HomeContainerView!

    let marvelDetailsViewModel = MarvelDetailsViewModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        setupViewModelDelegate()
        getDetails()
    }

    private func setupViewModelDelegate() {
        marvelDetailsViewModel.delegate = self
    }

    private func getDetails() {
        marvelDetailsViewModel.getDetails()
    }

    func reloadContainerView(_ data: [MarvelDetailsModel]) {
        homeContainerView.reloadCollectionView(with: data)
    }

}

