//
//  DetailHeaderView.swift
//  HeadSpaceFocus
//
//  Created by 이제완 on 2022/11/29.
//

import UIKit

class DetailHeaderView: UICollectionReusableView {
    @IBOutlet weak var titleLabel: UILabel!
    
    func configure(_ title: String) {
        titleLabel.text = title
    }
}
