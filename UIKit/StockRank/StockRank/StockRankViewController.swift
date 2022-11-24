//
//  StockRankViewController.swift
//  StockRank
//
//  Created by 이제완 on 2022/11/18.
//

import UIKit

class StockRankViewController: UIViewController {

    let stockList: [StockModel] = StockModel.list
    
    @IBOutlet weak var collectionView: UICollectionView!
    
    // Data, Presentation, Layout
    // Data: 어떤 데이터? -> stockList
    // Presentation: 셀을 어떻게 표현?
    // Layout: 셀을 어떻게 배치?
    
    // collectionView.dataSource: data, presentation 지정
    // collectionView.delegate: layout 지정
    
    // dataSource와 delegate는 프로토콜임
    // -> 규칙 지정
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        collectionView.dataSource = self
        collectionView.delegate = self

    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
    }
}

extension StockRankViewController: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        // 데이터 개수 어떻게 할지
        return stockList.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        // 셀을 어떻게 표현할 것인지?
        
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "StockRankCollectionViewCell", for: indexPath) as? StockRankCollectionViewCell else {
            return UICollectionViewCell()
        }
        let stock = stockList[indexPath.item]
        cell.configure(stock)
        
        return cell
    }
}

extension StockRankViewController: UICollectionViewDelegateFlowLayout {
    // 셀들을 어떻게 배치할 것인지?
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        // width == collectionView (싱글컬럼으로 하기 위해서)
        // height = 80
        return CGSize(width: collectionView.bounds.width, height: 80)
    }
}
