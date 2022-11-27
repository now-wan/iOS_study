//
//  FocusCell.swift
//  HeadSpaceFocus
//
//  Created by 이제완 on 2022/11/27.
//

import UIKit

class FocusCell: UICollectionViewCell {
    
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var weatherImageView: UIImageView!
    @IBOutlet weak var descriptionLabel: UILabel!
    
    override func prepareForReuse() {
        super.prepareForReuse()
        titleLabel.text = nil
        weatherImageView.image = nil
        descriptionLabel.text = nil
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        contentView.backgroundColor = UIColor.systemIndigo
        contentView.layer.cornerRadius = 10
        
    }
    
    func configure(_ focus: Focus) {
        titleLabel.text = focus.title
        weatherImageView.image = UIImage(systemName: focus.imageName)?.withRenderingMode(UIImage.RenderingMode.alwaysOriginal)
        descriptionLabel.text = focus.description
    }
}
