//
//  Store.swift
//  DandyHacksProject
//
//  Created by Abrar Bhuiyan on 2/18/18.
//  Copyright © 2018 Abrar Bhuiyan. All rights reserved.
//

import UIKit
import Foundation

class Store: NSObject {
    var name: String
    var items: [MenuItem]
    
    init(_ name: String, _ items: [MenuItem]) {
        self.name = name
        self.items = items
    }
    
}
