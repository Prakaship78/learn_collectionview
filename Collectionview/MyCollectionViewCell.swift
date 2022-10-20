//
//  MyCollectionViewCell.swift
//  Collectionview
//
//  Created by Prakash on 19/10/22.
//

import UIKit

class MyCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet var imageView : UIImageView!
    
    static let identifier = "MyCollectionViewCell"

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    //styling : recommended way
    public func configure(with image : UIImage){
        imageView.image = image
    }
    
    // registering by nib
    static func nib() -> UINib {
        return UINib(nibName: "MyCollectionViewCell", bundle: nil)
    }

}
