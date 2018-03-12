//
//  ViewController.swift
//  SwiftDesignPattern
//
//  Created by Yon Lau on 12/03/2018.
//  Copyright © 2018 YonLau. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        print("UserName:",UserManager.sharedInstance().getUserName())
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

