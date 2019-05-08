//
//  HomeContainerView.swift
//  APIIntegration[Swift]
//
//  Created by Divum on 07/05/19.
//  Copyright © 2019 Divum. All rights reserved.
//

import UIKit

class HomeContainerView: UIView {

    @IBOutlet weak var containerView: UIView!
    @IBOutlet weak var collectionView: UICollectionView!

    let nibName = String(describing: HomeContainerView.self)
    let identifier = MarvelCollectionViewCell.identifier
    var marvelData: [MarvelDetailsModel] = []

    override init(frame: CGRect) {
        super.init(frame: frame)
        commonInit()
    }

    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        commonInit()
    }

    private func commonInit() {
        Bundle.main.loadNibNamed(nibName, owner: self, options: nil)
        setupContainerView()
        setupCollectionView()
    }

    private func setupContainerView() {
        addSubview(containerView)
        containerView.frame = bounds
        containerView.autoresizingMask = [.flexibleWidth, .flexibleHeight]
    }

    private func setupCollectionView() {
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .horizontal
        collectionView.showsHorizontalScrollIndicator = false
        collectionView.delegate = self
        collectionView.dataSource = self
        collectionView.isPagingEnabled = true
        collectionView.setCollectionViewLayout(layout, animated: true)
        collectionView.register(UINib(nibName: identifier, bundle: nil), forCellWithReuseIdentifier: identifier)
    }

    func reloadCollectionView(with data: [MarvelDetailsModel]) {
        self.marvelData = data
        DispatchQueue.main.async {
            self.collectionView.reloadData()
        }
    }

}
