//
//  Section.swift
//  AppStore
//
//  Created by Craig Clayton on 12/3/19.
//  Copyright © 2019 Cocoa Academy. All rights reserved.
//

import UIKit

protocol Section {
    var numberOfItems: Int { get }
    func layoutSection() -> NSCollectionLayoutSection
    func configureCell(collectionView: UICollectionView, indexPath: IndexPath) -> UICollectionViewCell
}
