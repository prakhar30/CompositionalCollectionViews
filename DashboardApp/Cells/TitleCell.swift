//
//  TitleCell.swift
//  DashboardApp
//
//  Created by Craig Clayton on 12/11/19.
//  Copyright © 2019 Cocoa Academy. All rights reserved.
//

import UIKit

class TitleCell: UICollectionViewCell {

    @IBOutlet private var lblTitle: UILabel!
    @IBOutlet private var showAllView: UIView!

    override func awakeFromNib() {
        super.awakeFromNib()
    }

    func set(title: String) {
        lblTitle.text = title
    }

    func isShowAllHidden(value: Bool) {
        showAllView.isHidden = value
    }
}
