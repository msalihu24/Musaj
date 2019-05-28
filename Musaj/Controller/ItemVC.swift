//
//  ItemVC.swift
//  Musaj
//
//  Created by muhammad salihu on 5/27/19.
//  Copyright © 2019 muhammad salihu. All rights reserved.
//


import UIKit

class ItemVC: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {
    
    var Items = ["hoodie01.png","hoodie06.png","hoodie07.png"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    
    //Image Slider
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return Items.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "myCellMan", for: indexPath) as! myViewCell
        cell.myImageView.image = UIImage(named: Items[indexPath.row])
        return cell
        
    }
    
}


class myViewCell: UICollectionViewCell {
    @IBOutlet weak var myImageView: UIImageView!
}
