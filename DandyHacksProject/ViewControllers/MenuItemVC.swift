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
    var checkoutItems: [MenuItem] = []
    
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
    
    @IBAction func checkout(_ sender: Any) {
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let cell = sender as? UITableViewCell {
            let index = tableView.indexPath(for: cell)!.row
            if segue.identifier == "itemSelected" {
                let newViewController = segue.destination as! AddItemVC
                newViewController.origItem = menuItems[index].item
                newViewController.origPrice = menuItems[index].price
            }
        }
        
        if segue.identifier == "checkoutSegue" {
            let newViewController = segue.destination as! CheckoutVC
            newViewController.checkoutItems = checkoutItems
            newViewController.checkoutItems.append(MenuItem("Delivery Fee: ", 1.99, true))
            for i in 0..<newViewController.checkoutItems.count {
                newViewController.total = newViewController.total + newViewController.checkoutItems[i].price
            }
            newViewController.checkoutItems.append(MenuItem("Total: ", newViewController.total, true))
        }
    }
}
