//
//  HomeCollectionViewCell.swift
//  InstaSearchView
//
//  Created by 이제완 on 2022/11/23.
//

import UIKit

class HomeCollectionViewCell: UICollectionViewCell {
    @IBOutlet weak var userThumbnail: UIImageView!
    @IBOutlet weak var userLabel: UILabel!
    @IBOutlet weak var contentThumbnail: UIImageView!
    
    override func prepareForReuse() {
        super.prepareForReuse()
        contentThumbnail.image = nil
    }
    
    func configure(_ imageName: String) {
        userThumbnail.image = UIImage(systemName: "pawprint.circle.fill")?.withRenderingMode(.alwaysOriginal)
        
        userLabel.text = "National Geographic"
        contentThumbnail.image = UIImage(named: imageName)
    }
}
