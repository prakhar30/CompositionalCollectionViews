//
//  HomeViewController.swift
//  CollectionDashboard
//
//  Created by Craig Clayton on 12/11/19.
//  Copyright © 2019 Cocoa Academy. All rights reserved.
//

//TitleSection(title: "DISCOVER NEW PLACES", isShowAllHidden: true),
//DiscoverSection(),
//TitleSection(title: "POPULAR THIS WEEK", isShowAllHidden: false),
//PopularSection(),
//TitleSection(title: "RECENT GALLERY", isShowAllHidden: true),
//GroupNestedSection()

import UIKit

class HomeViewController: UIViewController {
    lazy var sections: [Section] = [
        TitleSection(title: "DISCOVER NEW PLACES", isShowAllHidden: true),
        DiscoverSection(),
        TitleSection(title: "POPULAR THIS WEEK", isShowAllHidden: false),
        PopularSection(),
        TitleSection(title: "RECENT GALLERY", isShowAllHidden: true),
        GroupNestedSection()
    ]

    @IBOutlet weak var collectionView: UICollectionView!

    lazy var collectionViewLayout: UICollectionViewLayout = {
        var sections = self.sections
        let layout = UICollectionViewCompositionalLayout { (sectionIndex, environment) -> NSCollectionLayoutSection? in
            return sections[sectionIndex].layoutSection()
        }

        return layout
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        setupCollectionView()
    }

    func setupCollectionView() {
        let cells: [RegisterableView] = [
            .nib(PopularCell.self),
            .nib(TitleCell.self),
            .nib(DiscoverCell.self),
            .nib(GridCell.self)
        ]

        collectionView.collectionViewLayout = collectionViewLayout
        collectionView.register(cells: cells)
    }

    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        collectionView.reloadData()
    }

    func scrollViewDidScroll(_ scrollView: UIScrollView) {
        collectionView.reloadData()
    }
}

extension HomeViewController: UICollectionViewDataSource {
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        sections.count
    }

    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        sections[section].numberOfItems
    }

    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        sections[indexPath.section].configureCell(collectionView: collectionView, indexPath: indexPath)

    }
}

extension HomeViewController: UICollectionViewDelegate {}
