//
//  StockRankCollectionViewCell.swift
//  StockRank
//
//  Created by 이제완 on 2022/11/21.
//

import UIKit

class StockRankCollectionViewCell: UICollectionViewCell {
    // ui component 연결
    // ui component에 데이터 업데이트하는 코드를 작성
    
    @IBOutlet weak var compDiff: UILabel!
    @IBOutlet weak var compPrice: UILabel!
    @IBOutlet weak var compName: UILabel!
    @IBOutlet weak var compImage: UIImageView!
    @IBOutlet weak var rankLabel: UILabel!
    
    func configure(_ stock: StockModel) {
        rankLabel.text = "\(stock.rank)"
        compName.text = "\(stock.imageName)"
        compImage.image = UIImage(named: stock.imageName)
        compPrice.text = "\(convertToCurrencyFormat(price: stock.price)) 원"
        compDiff.text = "\(stock.diff) %"
        compDiff.textColor = stock.diff > 0 ? UIColor.systemRed : UIColor.systemBlue
    }
    
    func convertToCurrencyFormat(price: Int) -> String {
        let numberFormatter = NumberFormatter()
        // 3자리마다 나누기
        numberFormatter.numberStyle = .decimal
        // 소수점 몇 자리까지 표현할지
        numberFormatter.maximumFractionDigits = 0
        // 옵셔널 안의 값이 없으면 "" 로 표현
        let result = numberFormatter.string(from: NSNumber(value: price)) ?? ""
        return result
    }
}
