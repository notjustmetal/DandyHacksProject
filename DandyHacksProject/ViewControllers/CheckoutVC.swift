//
//  CheckoutVC.swift
//  DandyHacksProject
//
//  Created by Abrar Bhuiyan on 2/18/18.
//  Copyright © 2018 Abrar Bhuiyan. All rights reserved.
//

import UIKit
import Foundation

class CheckoutVC: UITableViewController {
    var checkoutItems: [MenuItem] = []
    var total: Double = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.rowHeight = 60
        self.navigationItem.title = "Confirmation"
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(
            withIdentifier: "CheckoutCell", for: indexPath) as! CheckoutCell
        let item = checkoutItems[indexPath.row]
        cell.item?.text = item.item
        cell.price?.text = "$ " + String(item.price)
        return cell
    }
    
    override func tableView(_ tableView: UITableView,
                            numberOfRowsInSection section: Int) -> Int
    {
        return checkoutItems.count
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
}
