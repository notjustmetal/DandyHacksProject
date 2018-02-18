//
//  LoginVC.swift
//  DandyHacksProject
//
//  Created by Abrar Bhuiyan on 2/18/18.
//  Copyright © 2018 Abrar Bhuiyan. All rights reserved.
//

import UIKit
import Foundation

class LoginVC: UIViewController {
    
    @IBOutlet var loginButton: UIButton!
    
    override func viewWillAppear(_ animated: Bool) {
        loginButton.layer.cornerRadius = 20
        loginButton.clipsToBounds = true
    }

}
