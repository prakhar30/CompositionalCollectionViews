//
//  GroupNestedSection.swift
//  DashboardApp
//
//  Created by Craig Clayton on 1/9/20.
//  Copyright © 2020 Cocoa Academy. All rights reserved.
//

import UIKit

struct GroupNestedSection: Section {
    let numberOfItems = 27



    func layoutSection() -> NSCollectionLayoutSection {
        let fullItemSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(1.0),
                                                  heightDimension: .absolute(197))
        let fullItem = NSCollectionLayoutItem(layoutSize: fullItemSize)
        fullItem.contentInsets = NSDirectionalEdgeInsets(top: 2, leading: 0, bottom: 0, trailing: 2)

        let rowItemSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(1/2),
                                                    heightDimension: .fractionalHeight(1.0))

        let rowItem = NSCollectionLayoutItem(layoutSize: rowItemSize)
        rowItem.contentInsets = NSDirectionalEdgeInsets(top: 2, leading: 0, bottom: 0, trailing: 2)

        let rowSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(1.0),
                                                heightDimension: .absolute(74))

        let firstRow = NSCollectionLayoutGroup.horizontal(layoutSize:  rowSize, subitem: rowItem, count: 4)
        let secondRow = NSCollectionLayoutGroup.horizontal(layoutSize: rowSize, subitem: rowItem, count: 4)

        let nestedGroup = NSCollectionLayoutGroup.vertical(
            layoutSize: NSCollectionLayoutSize(widthDimension: .fractionalWidth(0.90),
                                              heightDimension: .absolute(360)),
                                                     subitems: [fullItem, firstRow, secondRow]
        )

        let section = NSCollectionLayoutSection(group: nestedGroup)
        section.interGroupSpacing = 10
        section.orthogonalScrollingBehavior = .groupPaging
        section.contentInsets = NSDirectionalEdgeInsets(top: 0, leading: 10, bottom: 0, trailing: 0)

        return section
    }

    func configureCell(collectionView: UICollectionView, indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: String(describing: GridCell.self), for: indexPath) as! GridCell
        return cell
    }
}
