//
//  MenuItem.swift
//  DandyHacksProject
//
//  Created by Abrar Bhuiyan on 2/17/18.
//  Copyright © 2018 Abrar Bhuiyan. All rights reserved.
//

import Foundation

class MenuItem: NSObject {
    var item: String
    var price: Double
    var isSize: Bool

    init(_ item: String, _ price: Double, _ isSize: Bool) {
        self.item = item
        self.price = price
        self.isSize = isSize
    }
}

