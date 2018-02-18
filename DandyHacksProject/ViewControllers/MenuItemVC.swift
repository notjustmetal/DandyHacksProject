//
//  MenuItemVC.swift
//  DandyHacksProject
//
//  Created by Abrar Bhuiyan on 2/17/18.
//  Copyright © 2018 Abrar Bhuiyan. All rights reserved.
//
import UIKit
import Foundation

class MenuItemVC: UITableViewController {
    var menuItems: [MenuItem] = []
    var storeName: String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.rowHeight = 60
        self.navigationItem.title = storeName
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(
            withIdentifier: "MenuItemCell", for: indexPath) as! MenuItemCell
        let item = menuItems[indexPath.row]
        cell.menuItem?.text = item.item
        cell.menuPrice?.text = "$ " + String(item.price)
        return cell
    }
    
    override func tableView(_ tableView: UITableView,
                            numberOfRowsInSection section: Int) -> Int
    {
        return menuItems.count
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
}
