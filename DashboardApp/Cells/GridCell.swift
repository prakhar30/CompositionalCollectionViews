//
//  GridCell.swift
//  DashboardApp
//
//  Created by Craig Clayton on 1/8/20.
//  Copyright © 2020 Cocoa Academy. All rights reserved.
//

import UIKit

class GridCell: UICollectionViewCell {

    @IBOutlet weak var imgView: UIImageView!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        configure()
    }

    func configure() {
        imgView.layer.borderWidth = 1.0
        imgView.layer.cornerRadius = 10.0
        imgView.layer.borderColor = UIColor.white.cgColor
    }

}
