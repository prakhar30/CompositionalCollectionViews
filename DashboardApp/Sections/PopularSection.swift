//
//  PopularSection.swift
//  AppStore
//
//  Created by Craig Clayton on 12/8/19.
//  Copyright © 2019 Cocoa Academy. All rights reserved.
//

import UIKit

struct PopularSection: Section {
    let numberOfItems = 9

    func layoutSection() -> NSCollectionLayoutSection {
        // 1
        let itemSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(1), heightDimension: .fractionalHeight(1))

        // 2
        let item = NSCollectionLayoutItem(layoutSize: itemSize)

        // 3
        let groupSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(0.95), heightDimension: .fractionalHeight(0.34))

        // 4
        let group = NSCollectionLayoutGroup.vertical(layoutSize: groupSize, subitem: item, count: 3)

        //5
        let section = NSCollectionLayoutSection(group: group)
        section.orthogonalScrollingBehavior = .groupPagingCentered

        return section
    }

    func configureCell(collectionView: UICollectionView, indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: String(describing: PopularCell.self), for: indexPath)
        return cell
    }
}
