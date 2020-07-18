//
//  TitleSection.swift
//  DashboardApp
//
//  Created by Craig Clayton on 12/11/19.
//  Copyright © 2019 Cocoa Academy. All rights reserved.
//

import UIKit

struct TitleSection: Section {
    // Step 1
    let numberOfItems = 1

    private let title: String
    private let isShowAllHidden: Bool

    // Step 2
    init(title: String, isShowAllHidden: Bool) {
        self.title = title
        self.isShowAllHidden = isShowAllHidden
    }

    // Step 3
    func layoutSection() -> NSCollectionLayoutSection {
        
        let itemSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(1), heightDimension: .fractionalHeight(1))
        let item = NSCollectionLayoutItem(layoutSize: itemSize)

        let groupSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(1), heightDimension: .absolute(73))
        let group = NSCollectionLayoutGroup.horizontal(layoutSize: groupSize, subitems: [item])

        let section = NSCollectionLayoutSection(group: group)
        return section
    }

    // Step 4
    func configureCell(collectionView: UICollectionView, indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: String(describing: TitleCell.self), for: indexPath) as! TitleCell
        cell.set(title: title)
        cell.isShowAllHidden(value: isShowAllHidden)

        return cell
    }
}
