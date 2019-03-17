//
//  ViewController.swift
//  UITableViewController
//
//  Created by Dima on 2/14/19.
//  Copyright © 2019 Dima. All rights reserved.
//

import UIKit


  class ViewController: UIViewController {
    
     //var images = [UIImage(named: "image1"), UIImage(named: "image2"), UIImage(named: "image3"), UIImage(named: "image4"), UIImage(named: "image5"), UIImage(named: "image6"), UIImage(named: "image7"), UIImage(named: "image8"), UIImage(named: "image9"), UIImage(named: "image10"), UIImage(named: "image11"), UIImage(named: "image12"), UIImage(named: "image13"), UIImage(named: "image14"), UIImage(named: "image15")]
    
    
    @IBOutlet weak var collectionView: UICollectionView!
    
    var fotoArray: [Menu] = {
        
        var blank = Menu()
        blank.myLable = "Foto 1"
        blank.imageName = "image1"
        
        var blank2 = Menu()
        blank2.myLable = "Foto 2"
        blank2.imageName = "image2"
        
        var blank3 = Menu()
        blank3.myLable = "Foto 3"
        blank3.imageName = "image3"
        
        var blank4 = Menu()
        blank4.myLable = "Foto 4"
        blank4.imageName = "image4"
        
        var blank5 = Menu()
        blank5.myLable = "Foto 5"
        blank5.imageName = "image5"
        
        var blank6 = Menu()
        blank6.myLable = "Foto 6"
        blank6.imageName = "image6"
        
        var blank7 = Menu()
        blank7.myLable = "Foto 7"
        blank7.imageName = "image7"
        
        var blank8 = Menu()
        blank8.myLable = "Foto 8"
        blank8.imageName = "image8"
        
        var blank9 = Menu()
        blank9.myLable = "Foto 9"
        blank9.imageName = "image9"
        
        var blank10 = Menu()
        blank10.myLable = "Foto 10"
        blank10.imageName = "image10"
        
        var blank11 = Menu()
        blank11.myLable = "Foto 11"
        blank11.imageName = "image11"
        
        var blank12 = Menu()
        blank12.myLable = "Foto 12"
        blank12.imageName = "image12"
        
        var blank13 = Menu()
        blank12.myLable = "Foto 13"
        blank12.imageName = "image13"
        
        var blank14 = Menu()
        blank12.myLable = "Foto 14"
        blank12.imageName = "image14"
        
        var blank15 = Menu()
        blank12.myLable = "Foto 15"
        blank12.imageName = "image15"
        
        return [blank, blank2, blank3, blank4, blank5, blank6, blank7, blank8, blank9, blank10, blank11, blank12, blank13, blank14, blank15]
        
        
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
                
        collectionView.dataSource = self
        collectionView.delegate = self
    }

}

extension ViewController: UICollectionViewDataSource, UICollectionViewDelegate {
    
    public func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return fotoArray.count
    }
    
    public func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "menu", for: indexPath) as? ImageCollectionViewCell {
        
            cell.fotoMenu = fotoArray[indexPath.row]
            return cell
        }
        return UICollectionViewCell()
    }

}
