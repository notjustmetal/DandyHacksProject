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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.rowHeight = 75
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(
            withIdentifier: "AvailStore", for: indexPath) as! StoreScreenCell
        let store = availStores[indexPath.row]
        cell.storeName?.text = store
        return cell
    }
    
    override func tableView(_ tableView: UITableView,
                            numberOfRowsInSection section: Int) -> Int
    {
        return availStores.count
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
}
