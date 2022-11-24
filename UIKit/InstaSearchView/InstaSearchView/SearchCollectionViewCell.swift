//
//  SearchCollectionViewCell.swift
//  InstaSearchView
//
//  Created by 이제완 on 2022/11/23.
//

import UIKit

class SearchCollectionViewCell: UICollectionViewCell {
    @IBOutlet weak var imageView: UIImageView!
    
    override func prepareForReuse() {
        super.prepareForReuse()
        imageView.image = nil
        // 재사용을 위해 초기화
    }
    
    func configure(_ imageName: String) {
        imageView.image = UIImage(named: imageName)
    }
}
