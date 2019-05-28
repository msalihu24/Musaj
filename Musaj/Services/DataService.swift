//
//  DataService.swift
//  Musaj
//
//  Created by muhammad salihu on 5/25/19.
//  Copyright © 2019 muhammad salihu. All rights reserved.
//

import Foundation
class DataService {
    static let instance = DataService()
    
    //Set Image Name and Description on Category page
    private let categories = [
        Category(title: "SHIRTS", imageName: "shirts.png"),
        Category(title: "HOODIES", imageName: "hoodies.png"),
        Category(title: "HATS", imageName: "hats.png"),
        Category(title: "DIGITAL", imageName: "digital.png")
    ]
    
    //Set Image Name,Description and Price on Product page
    private let hats = [
        Product(title: "Musaj Logo Graphic Beanie", price: "£18", imageName: "hat01.png"),
        Product(title: "Musaj Logo Hat Black", price: "£22", imageName: "hat02.png"),
        Product(title: "Musaj Logo Hat White", price: "£22", imageName: "hat03.png"),
        Product(title: "Musaj Logo Snapback", price: "£20", imageName: "hat04.png")
    ]
    
    private let hoodies = [
        Product(title: "Musaj Logo Hoodie Grey", price: "£32", imageName: "hoodie01.png"),
        Product(title: "Musaj Logo Hoodie Red", price: "£32", imageName: "hoodie02.png"),
        Product(title: "Musaj Hoodie Grey", price: "£32", imageName: "hoodie03.png"),
        Product(title: "Musaj Hoodie Black", price: "£32", imageName: "hoodie04.png"),
        
        ]
    
    private let shirts = [
        Product(title: "Musaj Logo Shirt Black", price: "£18", imageName: "shirt01.png"),
        Product(title: "Musaj Badge Shirt Light Grey", price: "£19", imageName: "shirt02.png"),
        Product(title: "Musaj Logo Shirt Red", price: "£18", imageName: "shirt03.png"),
        Product(title: "Hustle Delegate Grey", price: "£18", imageName: "shirt04.png"),
        Product(title: "Kickflip Studios Black", price: "£18", imageName: "shirt05.png")
    ]
    
    private let digitalGoods = [Product]()
    
    func getCategories() -> [Category] {
        return categories
    }
    
    //Returns the array for specific product selected on Category page
    func getProducts(forCategoryTitle title:String) -> [Product] {
        switch title {
        case "SHIRTS":
            return getShirts()
        case "HATS":
            return getHats()
        case "HOODIES":
            return getHoodies()
        case "DIGITAL":
            return getDigitalGoods()
        default:
            return getShirts()
        }
    }
    
    //Points to the right array for specific product selected on Category page
    func getHats() -> [Product] {
        return hats
    }
    
    func getHoodies() -> [Product] {
        return hoodies
    }
    
    func getShirts() -> [Product] {
        return shirts
    }
    
    func getDigitalGoods() -> [Product] {
        return digitalGoods
    }
}















