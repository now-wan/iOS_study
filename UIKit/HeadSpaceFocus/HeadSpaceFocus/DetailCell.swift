//
//  DetailCell.swift
//  HeadSpaceFocus
//
//  Created by 이제완 on 2022/11/29.
//

import UIKit

class DetailCell: UICollectionViewCell {
    
    @IBOutlet weak var thumbnailImageView: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    
    func configure(_ info: QuickFocus) {
        thumbnailImageView.image = UIImage(named: info.imageName)
        titleLabel.text = info.title
        descriptionLabel.text = info.description
    }
}
