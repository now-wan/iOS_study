//
//  OnBoardCell.swift
//  NRCOnboarding
//
//  Created by 이제완 on 2022/11/24.
//

import UIKit

class OnBoardCell: UICollectionViewCell {
    @IBOutlet weak var thumbnailView: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var contentLabel: UILabel!
    
    override func prepareForReuse() {
        super.prepareForReuse()
        
        thumbnailView.image = nil
        titleLabel.text = nil
        contentLabel.text = nil
    }
    
    func configure(_ onboardingMessage: OnboardingMessage) {
        thumbnailView.image = UIImage(named: onboardingMessage.imageName)
        titleLabel.text = onboardingMessage.title
        contentLabel.text = onboardingMessage.description
    }
}


