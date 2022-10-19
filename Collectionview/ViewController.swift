//
//  ViewController.swift
//  Collectionview
//
//  Created by Prakash on 19/10/22.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var collectionView : UICollectionView!

    override func viewDidLoad() {
        super.viewDidLoad()
        collectionView.delegate = self
       
        
        }


}

extension ViewController : UICollectionViewDelegate {
    
}

extension ViewController : UICollectionViewDataSource {
    
}

extension ViewController : UICollectionViewDelegateFlowLayout {
    
}


