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

    init(_ item: String, _ price: Double) {
        self.item = item
        self.price = price
    }
}

