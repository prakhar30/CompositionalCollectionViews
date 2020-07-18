//
//  GridSection.swift
//  DashboardApp
//
//  Created by Craig Clayton on 1/8/20.
//  Copyright © 2020 Cocoa Academy. All rights reserved.
//

import UIKit

struct GridSection: Section {
    let numberOfItems = 100

    func layoutSection() -> NSCollectionLayoutSection {
        let itemSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(1), heightDimension: .fractionalHeight(0.25))
        let item = NSCollectionLayoutItem(layoutSize: itemSize)

        let groupSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(0.25), heightDimension: .fractionalHeight(0.5))

        let group = NSCollectionLayoutGroup.vertical(layoutSize: groupSize, subitems: [item])


        let section = NSCollectionLayoutSection(group: group)
        section.orthogonalScrollingBehavior = .continuous

        return section
    }

    func configureCell(collectionView: UICollectionView, indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: String(describing: GridCell.self), for: indexPath)

        return cell
    }
}
