//
//  ImageCollectionViewCell.swift
//  UITableViewController
//
//  Created by Dima on 3/17/19.
//  Copyright © 2019 Dima. All rights reserved.
//

import UIKit

class ImageCollectionViewCell: UICollectionViewCell {
    
    
    @IBOutlet weak var myImageView: UIImageView!
    
    @IBOutlet weak var myLable: UILabel!
    
    var fotoMenu: Menu? {
        didSet {
            myLable.text = fotoMenu?.myLable
            if let image = fotoMenu?.imageName {
                self.myImageView.image = UIImage(named: image)
            }
        }
        
        
    }
    
    
}
