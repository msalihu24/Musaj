//
//  ItemVC2.swift
//  Musaj
//
//  Created by muhammad salihu on 5/27/19.
//  Copyright © 2019 muhammad salihu. All rights reserved.
//

import UIKit

extension class : ItemVC {
    
    var Extras = ["hoodie01.png","hoodie01.png","hoodie01.png","hoodie01.png","hoodie01.png"]
    
    
     func viewDidLoad() {
        super.viewDidLoad()
        
        ItemVC2.dataSource = self
        ItemVC2.delegate = self
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return Extras.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "moreCells", for: indexPath) as! extraCells
        cell.myCellPictures.image = UIImage(named: Extras[indexPath.row])
        return cell
    }
    
    
    
}

//Extras
class extraCells: UICollectionViewCell {
  
    @IBOutlet weak var myCellPictures: UIImageView!
}


