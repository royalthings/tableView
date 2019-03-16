//
//  ViewController.swift
//  UITableViewController
//
//  Created by Dima on 2/14/19.
//  Copyright © 2019 Dima. All rights reserved.
//

import UIKit


  class TableViewController: UITableViewController {
    
     var images = [UIImage(named: "image1"), UIImage(named: "image2"), UIImage(named: "image3"), UIImage(named: "image4"), UIImage(named: "image5"), UIImage(named: "image6"), UIImage(named: "image7"), UIImage(named: "image8"), UIImage(named: "image9"), UIImage(named: "image10"), UIImage(named: "image11"), UIImage(named: "image12"), UIImage(named: "image13"), UIImage(named: "image14"), UIImage(named: "image15")]
    

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.tableView.register(ImageViewCell.self, forCellReuseIdentifier: "ImageViewCell")
        
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return images.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ImageViewCell") as! ImageViewCell
        
        cell.myImageView.image = images[indexPath.row]
        cell.myLable.text = "Foto - \(indexPath.row + 1)"

        return cell
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        let currentImage = images[indexPath.row]
        let imageCrop = currentImage?.getCropRatio()
        return tableView.frame.width / imageCrop!
    }

}

extension UIImage {
    func getCropRatio() -> CGFloat {
        let widthRatio = CGFloat(self.size.width / self.size.height)
        return widthRatio
    }
}
