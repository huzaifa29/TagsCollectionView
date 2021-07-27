//
//  TagCell.swift
//  GoSayHello
//
//  Created by Huzaifa Ameen on 21/07/2021.
//

import UIKit

class TagCell: UICollectionViewCell {
    
    @IBOutlet weak var lblTag: UILabel!
    @IBOutlet weak var viewContent: UIView!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        self.heightAnchor.constraint(equalToConstant: 50).isActive = true
        viewContent.layer.cornerRadius = 10
        viewContent.backgroundColor = .lightGray
    }

}
