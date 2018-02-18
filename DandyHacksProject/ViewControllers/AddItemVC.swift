//
//  AddItemVC.swift
//  DandyHacksProject
//
//  Created by Abrar Bhuiyan on 2/18/18.
//  Copyright © 2018 Abrar Bhuiyan. All rights reserved.
//

import UIKit
import Foundation

class AddItemVC: UIViewController {
    
    @IBOutlet var item: UILabel!
    @IBOutlet var price: UILabel!
    @IBOutlet var addButton: UIButton!
    
    var origItem: String!
    var origPrice: Double!
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        item.text = origItem
        price.text = "$ " + String(origPrice)
        addButton.layer.cornerRadius = 20
        addButton.clipsToBounds = true
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        
        view.endEditing(true)
        
    }
    @IBAction func addItem(_ sender: Any) {
        let vc = self.navigationController?.viewControllers[4] as! MenuItemVC
        vc.checkoutItems.append(MenuItem(origItem, origPrice, true))
        vc.checkoutButton.isHidden = false
       
        self.navigationController?.popViewController(animated: true)
    }
    
}
