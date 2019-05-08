//
//  HomeContainerView+UICollectionView.swift
//  APIIntegration[Swift]
//
//  Created by Divum on 08/05/19.
//  Copyright © 2019 Divum. All rights reserved.
//

import Foundation
import UIKit

extension HomeContainerView: UICollectionViewDelegateFlowLayout, UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return marvelData.count
    }

    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: MarvelCollectionViewCell.identifier, for: indexPath)
        guard let marvelCell = cell as? MarvelCollectionViewCell else { return cell }
        marvelCell.configureCell(marvelDetails: marvelData[indexPath.row])
        return marvelCell
    }

    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: collectionView.frame.width, height: collectionView.frame.height)
    }

    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 0
    }

    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return 0
    }
}
