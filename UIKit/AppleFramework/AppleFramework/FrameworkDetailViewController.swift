//
//  FrameworkDetailViewController.swift
//  AppleFramework
//
//  Created by 이제완 on 2022/11/29.
//

import UIKit
import SafariServices

class FrameworkDetailViewController: UIViewController {
    @IBOutlet weak var thumbnailImageView: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    @IBOutlet weak var learnMoreButton: UIButton!
    
    var frameworkData: AppleFramework = AppleFramework(name: "", imageName: "", urlString: "", description: "")
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
    }
    
    func updateUI() {
        thumbnailImageView.image = UIImage(named: frameworkData.imageName)
        titleLabel.text = frameworkData.name
        descriptionLabel.text = frameworkData.description
    }
    
    @IBAction func learnMoreTapped(_ sender: Any) {
        guard let url = URL(string: frameworkData.urlString) else {
            return
        }
        let safari = SFSafariViewController(url: url)
        present(safari, animated: true)
    }
}
