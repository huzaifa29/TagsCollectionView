//
//  ViewController.swift
//  TagsCollections
//
//  Created by Huzaifa Ameen on 27/07/2021.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var collectionViewTags: UICollectionView!
    
    var tags: [String] = ["Healthcare", "Industrials", "Financials", "Information Technology", "Design", "Energy", "Military", "Travel", "Banking"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.configureColViewTags()
    }
    
    func configureColViewTags() {
        let cellNib = UINib(nibName: "TagCell", bundle: nil)
        self.collectionViewTags.register(cellNib, forCellWithReuseIdentifier: "TagCell")
        self.collectionViewTags.delegate = self
        self.collectionViewTags.dataSource = self
        self.configureFlowLayoutTags()
    }
    
    func configureFlowLayoutTags() {
        let flowLayout = UICollectionViewFlowLayout()
        flowLayout.estimatedItemSize = UICollectionViewFlowLayout.automaticSize
        flowLayout.minimumLineSpacing = 5.0
        flowLayout.minimumInteritemSpacing = 5.0
        flowLayout.scrollDirection = .vertical
        self.collectionViewTags.collectionViewLayout = flowLayout
    }


}


extension ViewController: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return self.tags.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "TagCell", for: indexPath) as! TagCell
        let tag = self.tags[indexPath.row]
        cell.lblTag.text = tag
        return cell
        
    }
    
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 5.0
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return 5.0
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        let edge = UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 0)
        return edge
    }
}

