//
//  ImageTableViewCell.swift
//  UITableViewController
//
//  Created by Dima on 2/14/19.
//  Copyright © 2019 Dima. All rights reserved.
//

import UIKit

class ImageViewCell: UITableViewCell {
    
     
    var myImageView: UIImageView = {
        var imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
        
    }()
    
    var myLable: UILabel = {
        var lable = UILabel()
        lable.translatesAutoresizingMaskIntoConstraints = false
        return lable
    }()

    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        self.addSubview(myImageView)
        
        myImageView.leftAnchor.constraint(equalTo: self.leftAnchor).isActive = true
        myImageView.rightAnchor.constraint(equalTo: self.rightAnchor).isActive = true
        myImageView.topAnchor.constraint(equalTo: self.topAnchor).isActive = true
        myImageView.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: -40.0).isActive = true
        
        myLable.textColor = UIColor.blue
        myLable.font = UIFont.boldSystemFont(ofSize: 17)
        myLable.textAlignment = .center
        self.addSubview(myLable)
        
        myLable.leftAnchor.constraint(equalTo: self.leftAnchor).isActive = true
        myLable.rightAnchor.constraint(equalTo: self.rightAnchor).isActive = true
        myLable.heightAnchor.constraint(equalToConstant: 40.0).isActive = true
        myLable.widthAnchor.constraint(equalToConstant: 370.0).isActive = true
        myLable.topAnchor.constraint(equalTo: myImageView.bottomAnchor).isActive = true
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
}

