//
//  Product.swift
//  Musaj
//
//  Created by muhammad salihu on 5/25/19.
//  Copyright © 2019 muhammad salihu. All rights reserved.
//

import Foundation

//Creates an objects named Title,Price and ImageName
struct Product {
    private(set) public var title: String
    private(set) public var price: String
    private(set) public var imageName: String
    
    init(title: String, price: String, imageName: String) {
        self.title = title
        self.price = price
        self.imageName = imageName
    }
}

