//
//  PaywallViewController.swift
//  SpotifyPaywall
//
//  Created by 이제완 on 2022/11/28.
//

import UIKit

class PaywallViewController: UIViewController {
    @IBOutlet weak var collectionView: UICollectionView!
    @IBOutlet weak var pageControl: UIPageControl!
    @IBOutlet weak var premiumButton: UIButton!
    
    let Items: [BannerInfo] = BannerInfo.list
    let colors: [UIColor] = [.systemPurple, .systemOrange, .systemPink, .systemRed]
    
    enum Section {
        case main
    }
    typealias Item = BannerInfo
    var datasource: UICollectionViewDiffableDataSource<Section, Item>!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        datasource = UICollectionViewDiffableDataSource<Section, Item>(collectionView: collectionView, cellProvider: { collectionView, indexPath, item in
            guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "BannerCell", for: indexPath) as? BannerCell else {
                return nil
            }
            cell.configure(item)
            cell.backgroundColor = self.colors[indexPath.item]
            return cell
        })
        
        var snapshot = NSDiffableDataSourceSnapshot<Section, Item>()
        snapshot.appendSections([.main])
        snapshot.appendItems(Items, toSection: .main)
        datasource.apply(snapshot)
        
        collectionView.collectionViewLayout = layout()
        pageControl.numberOfPages = Items.count
    }
    
    func layout() -> UICollectionViewCompositionalLayout {
        let itemSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(1), heightDimension: .fractionalHeight(1))
        let item = NSCollectionLayoutItem(layoutSize: itemSize)
        
        let groupSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(0.8), heightDimension: .absolute(200))
        let group = NSCollectionLayoutGroup.horizontal(layoutSize: groupSize, subitems: [item])
    
        let section = NSCollectionLayoutSection(group: group)
        section.contentInsets = NSDirectionalEdgeInsets(top: 0, leading: 25, bottom: 0, trailing: 25)
        section.interGroupSpacing = 20
        section.orthogonalScrollingBehavior = .groupPagingCentered
        section.visibleItemsInvalidationHandler = { item, scrollOffset, env in
            let index = Int((scrollOffset.x + 14.4)/334.3)
            self.pageControl.currentPage = index
        }
        
        let layout = UICollectionViewCompositionalLayout(section: section)
        return layout
    }
}
