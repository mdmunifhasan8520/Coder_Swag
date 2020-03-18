//
//  DataService.swift
//  Coder_Swag
//
//  Created by Mac PC on 3/18/20.
//  Copyright © 2020 Ticon. All rights reserved.
//

import Foundation

class DataService {
    static let instance = DataService()
    
    private let categories = [
        Category(title: "Call of Duty", imageName: "shirts.png"),
        Category(title: "Misson Imposible", imageName: "hats.png"),
        Category(title: "Avatar", imageName: "digital.png"),
        Category(title: "Shawank Redemption", imageName: "hoodie01.png"),
        Category(title: "Avatar", imageName: "digital.png"),
        Category(title: "Misson Imposible", imageName: "hats.png")
    ]
    
    private let hates = [
        Product(productImage: "hat01.png", productTitle: "Call of Duty", productPrice: "$35"),
        Product(productImage: "hat01.png", productTitle: "Call of Duty", productPrice: "$35"),
        Product(productImage: "hat01.png", productTitle: "Call of Duty", productPrice: "$35"),
        Product(productImage: "hat01.png", productTitle: "Call of Duty", productPrice: "$35")
        
    ]
    
    private let hoodies = [
        Product(productImage: "hoodie02.png", productTitle: "Call of Duty", productPrice: "$35"),
        Product(productImage: "hoodie02.png", productTitle: "Call of Duty", productPrice: "$35"),
        Product(productImage: "hoodie02.png", productTitle: "Call of Duty", productPrice: "$35"),
        Product(productImage: "hoodie02.png", productTitle: "Call of Duty", productPrice: "$35")
        
    ]
    private let shirts = [
           Product(productImage: "shirt01.png", productTitle: "Call of Duty", productPrice: "$35"),
           Product(productImage: "shirt01.png", productTitle: "Call of Duty", productPrice: "$35"),
           Product(productImage: "shirt01.png", productTitle: "Call of Duty", productPrice: "$35"),
           Product(productImage: "shirt01.png", productTitle: "Call of Duty", productPrice: "$35")
           
       ]
    private let digitalGoods = [Product]()
    
    
    func getProducts(forCategoryTitle title: String) -> [Product] {
        switch title {
        case "HATS":
            return getHats()
        case "HOODIES":
            return getHoodies()
        case "SHIRTS":
            return getShirts()
        case "DIGITAL":
            return getDigitalGoods()
        default:
            return getHats()
        }
    }
    
    func getHats() -> [Product] {
        return hates
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
    
    
    func getCategories() -> [Category] {
        return categories
    }
    
}
