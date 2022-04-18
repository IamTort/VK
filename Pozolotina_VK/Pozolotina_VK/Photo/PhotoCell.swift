//
//  PhotoCell.swift
//  Pozolotina_VK
//
//  Created by angelina on 16.04.2022.
//

import UIKit

class PhotoCell: UICollectionViewCell {
    
    @IBOutlet weak var photoImageView: UIImageView!
    
    var touches = 0 {
        didSet{
            countLabel.text = "\(touches)"
        }
    }
    @IBOutlet weak var countLabel: UILabel!
    @IBAction func countButton(_ sender: Any) {
        touches += 1
    }
}
