//
//  WelcomeVC.swift
//  DandyHacksProject
//
//  Created by Abrar Bhuiyan on 2/18/18.
//  Copyright © 2018 Abrar Bhuiyan. All rights reserved.
//

import UIKit
import Foundation

class WelcomeVC: UIViewController {
    
    @IBOutlet var getStarted: UIButton!
    
    override func viewDidLoad() {
        getStarted.layer.cornerRadius = 20
        getStarted.clipsToBounds = true
    }
}
