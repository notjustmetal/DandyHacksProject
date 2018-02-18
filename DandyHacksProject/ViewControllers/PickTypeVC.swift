//
//  PickTypeVC.swift
//  DandyHacksProject
//
//  Created by Abrar Bhuiyan on 2/18/18.
//  Copyright © 2018 Abrar Bhuiyan. All rights reserved.
//

import UIKit
import Foundation

class PickTypeVC: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func testButton(_ sender: Any) {
        print("Hi")
        
//        let parameters = ["name": "Abrar"]
//        let url = URL(string: "http://159.89.186.72")!
//        let session = URLSession.shared
//        var request = URLRequest(url: url)
//        request.httpMethod = "POST"
//
//        do {
//            request.httpBody = try JSONSerialization.data(withJSONObject: parameters, options: .prettyPrinted)
//        } catch let error {
//            print(error.localizedDescription)
//        }
//
//        request.addValue("application/json", forHTTPHeaderField: "Content-Type")
//        request.addValue("application/json", forHTTPHeaderField: "Accept")
//
//        let task = session.dataTask(with: request as URLRequest, completionHandler: { data, error, response in
//
//            guard error == nil else{
//                return
//            }
//
//            guard let data = data else {
//                return
//            }
//
//            do {
//                //create json object from data
//                if let json = try JSONSerialization.jsonObject(with: data, options: .mutableContainers) as? [String: Any] {
//                    print(json)
//                    // handle json...
//                }
//            } catch let error {
//                print(error.localizedDescription)
//            }
//        })
//        task.resume()
    }
}
