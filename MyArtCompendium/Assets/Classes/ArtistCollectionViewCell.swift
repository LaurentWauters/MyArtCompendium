//
//  ArtistCollectionViewCell.swift
//  MyArtCompendium
//
//  Created by Big Boi on 07/10/2018.
//  Copyright © 2018 Big Boi. All rights reserved.
//

import Foundation
import UIKit
import WebKit

class ArtistCollectionViewCell: UICollectionViewCell {
    var textLabel: UILabel!
    var imageView: UIImageView!
    
    override init(frame: CGRect) {
        super.init(frame: frame)
       
        imageView = UIImageView(frame: CGRect(x: frame.size.width/6, y: frame.size.height/12, width: frame.size.width*2/3, height: frame.size.height*2/3))
        imageView.contentMode = UIView.ContentMode.scaleAspectFit
    
        contentView.addSubview(imageView)
        
        textLabel = UILabel(frame: CGRect(x: 0, y: imageView.frame.size.height, width: frame.size.width, height: frame.size.height/3))
        textLabel.font = UIFont(name: "Comic Sans MS", size: 10)
        textLabel.textColor = UIColor.blue
        textLabel.textAlignment = .center
        contentView.addSubview(textLabel)
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
}
