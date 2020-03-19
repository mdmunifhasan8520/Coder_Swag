//
//  ProductVC.swift
//  Coder_Swag
//
//  Created by Mac PC on 3/18/20.
//  Copyright © 2020 Ticon. All rights reserved.
//

import UIKit

class ProductVC: UIViewController {
    
    @IBOutlet weak var produtsCollection: UICollectionView!
    
    
    private(set) public var products = [Product]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        produtsCollection.delegate = self
        produtsCollection.dataSource = self
    
        
        // Do any additional setup after loading the view.
    }
    
    func initProducts(category: Category) {
        products = DataService.instance.getProducts(forCategoryTitle: category.title)
        navigationItem.title = category.title
    }

}


extension ProductVC: UICollectionViewDelegate, UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return products.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "ProductCell", for: indexPath) as? ProductCell {
            let product = products[indexPath.row]
            cell.updateViews(product: product)
            return cell
        } else {
            return ProductCell()
        }
    }
    
    
}
