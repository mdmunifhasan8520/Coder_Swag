//
//  Product.swift
//  Coder_Swag
//
//  Created by Mac PC on 3/18/20.
//  Copyright © 2020 Ticon. All rights reserved.
//

import Foundation

struct Product {
    private(set) public var imageName: String
    private(set) public var title: String
    private(set) public var price: String
    
    init(productImage: String, productTitle: String, productPrice: String) {
        self.imageName = productImage
        self.title = productTitle
        self.price = productPrice
    }
}
