//
//  OrderStoresVC.swift
//  DandyHacksProject
//
//  Created by Abrar Bhuiyan on 2/17/18.
//  Copyright © 2018 Abrar Bhuiyan. All rights reserved.
//

import UIKit
import Foundation

class OrderStoresVC: UITableViewController {
    var availStores: [String] = ["Starbucks", "Peet's", "Java's"]
    var openStores: [Store] = []
    
    //starbucks menu
    var star1: MenuItem = MenuItem("Freshly Brewed Coffee", 1.85, true)
    var star2: MenuItem = MenuItem("Teavana Tea", 1.85, true)
    var star3: MenuItem = MenuItem("Caffe Latte", 2.95, true)
    var star4: MenuItem = MenuItem("Caffe Mocha", 3.45, true)
    var star5: MenuItem = MenuItem("Caffe Macchiato", 3.75, true)
    var starMenu: [MenuItem] = []
    
    //peet's menu
    var peet1: MenuItem = MenuItem("Coffee of the Day", 1.95, true)
    var peet2: MenuItem = MenuItem("Cafe au Lait", 2.55, true)
    var peet3: MenuItem = MenuItem("Cappuccino", 3.25, true)
    var peet4: MenuItem = MenuItem("Americano", 2.25, true)
    var peetMenu: [MenuItem] = []
    
    //late night menu
    var late1: MenuItem = MenuItem("Mel Burger", 12.25, false)
    var late2: MenuItem = MenuItem("Chicken Quesadilla", 7.75, false)
    var late3: MenuItem = MenuItem("Chicken Wings", 8.45, false)
    var late4: MenuItem = MenuItem("French Fries", 2.25, false)
    var late5: MenuItem = MenuItem("Onion Rings", 2.25, false)
    var lateMenu: [MenuItem] = []
    
    //java's menu
    var java1: MenuItem = MenuItem("Coffee", 1.95, true)
    var java2: MenuItem = MenuItem("Espresso", 1.25, true)
    var java3: MenuItem = MenuItem("Hot Chocolate", 3.55, true)
    var java4: MenuItem = MenuItem("Aztec Mocha", 4.45, true)
    var java5: MenuItem = MenuItem("Steamer", 2.55, false)
    var java6: MenuItem = MenuItem("Lemonade", 2.35, true)
    var javaMenu: [MenuItem] = []
    

    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.rowHeight = 75
        starMenu.append(star1)
        starMenu.append(star2)
        starMenu.append(star3)
        starMenu.append(star4)
        starMenu.append(star5)
        
        peetMenu.append(peet1)
        peetMenu.append(peet2)
        peetMenu.append(peet3)
        peetMenu.append(peet4)
        
        lateMenu.append(late1)
        lateMenu.append(late2)
        lateMenu.append(late3)
        lateMenu.append(late4)
        lateMenu.append(late5)
        
        javaMenu.append(java1)
        javaMenu.append(java2)
        javaMenu.append(java3)
        javaMenu.append(java4)
        javaMenu.append(java5)
        javaMenu.append(java6)
        
        var store1: Store = Store("Starbucks", starMenu)
        var store2: Store = Store("Peet's Coffee", peetMenu)
        var store3: Store = Store("Douglass Late Night", lateMenu)
        var store4: Store = Store("Java's Cafe", javaMenu)
        openStores.append(store1)
        openStores.append(store2)
        openStores.append(store3)
        openStores.append(store4)
        
        self.navigationItem.title = "Stores"
        
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(
            withIdentifier: "AvailStore", for: indexPath) as! StoreScreenCell
//        let store = availStores[indexPath.row]
        let store = openStores[indexPath.row]
        cell.storeName?.text = store.name
        return cell
    }
    
    override func tableView(_ tableView: UITableView,
                            numberOfRowsInSection section: Int) -> Int
    {
        return openStores.count
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let cell = sender as? UITableViewCell {
            let index = tableView.indexPath(for: cell)!.row
            if segue.identifier == "storeSelected" {
                let newViewController = segue.destination as! MenuItemVC
                newViewController.menuItems = openStores[index].items
                newViewController.storeName = openStores[index].name
            }
        }
    }
    
    
}
