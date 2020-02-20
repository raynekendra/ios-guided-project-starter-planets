//
//  PlanetCollectionViewCell.swift
//  Planets
//
//  Created by Kendra McVay on 2/19/20.
//  Copyright © 2020 Lambda Inc. All rights reserved.
//

import UIKit
class PlanetCollectionViewCell: UICollectionViewCell {
    
var planet: Planet?
didSet {
    updateViews()
    }
}

//Mark: IBOutlets
@IBOutlets var planetImageView: UIImageView!
@IBOutlets var planetNameLabel: UILabel!

private func updateViews() {
    planetNameLabel.text = planet?.planetName
    planetImageView.image = planet?.image
    }
}
