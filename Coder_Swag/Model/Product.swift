//
//  Product.swift
//  Coder_Swag
//
//  Created by Mac PC on 3/18/20.
//  Copyright © 2020 Ticon. All rights reserved.
//

import Foundation

struct Product {
    private(set) public var productImage: String
    private(set) public var productTitle: String
    private(set) public var productPrice: String
    
    init(productImage: String, productTitle: String, productPrice: String) {
        self.productImage = productImage
        self.productTitle = productTitle
        self.productPrice = productPrice
    }
}
