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
        
        // register nib
        collectionView.register(MyCollectionViewCell.nib(), forCellWithReuseIdentifier: MyCollectionViewCell.identifier)
        
        collectionView.delegate = self
        collectionView.dataSource = self
       
        
        }


}

// interaction
extension ViewController : UICollectionViewDelegate {
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        collectionView.deselectItem(at: indexPath, animated: true)
        print("you tapped me ")
    }
}

extension ViewController : UICollectionViewDataSource {
    
    // no of items
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 12
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: MyCollectionViewCell.identifier, for: indexPath) as! MyCollectionViewCell
        
        cell.configure(with: UIImage(named: "image")!)
        return cell
    }
}


// decides margin and padding between each cell
//extension ViewController : UICollectionViewDelegateFlowLayout {
//
//}


