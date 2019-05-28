//
//  Category.swift
//  Musaj
//
//  Created by muhammad salihu on 5/25/19.
//  Copyright © 2019 muhammad salihu. All rights reserved.
//

import Foundation

//Creates an objects named Title and ImageName

struct Category {
    private(set) public var title: String
    private(set) public var imageName: String
    
    init(title: String, imageName: String) {
        self.title = title
        self.imageName = imageName
    }
}
