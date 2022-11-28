//
//  BannerCell.swift
//  SpotifyPaywall
//
//  Created by 이제완 on 2022/11/28.
//

import UIKit

class BannerCell: UICollectionViewCell {
    
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    @IBOutlet weak var thumbnailImageView: UIImageView!
    
    override func prepareForReuse() {
        super.prepareForReuse()
        titleLabel.text = nil
        descriptionLabel.text = nil
        thumbnailImageView.image = nil
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        self.layer.cornerRadius = 10
    }
    
    func configure(_ banner: BannerInfo) {
        titleLabel.text = banner.title
        descriptionLabel.text = banner.description
        thumbnailImageView.image = UIImage(named: banner.imageName)
    }
}
