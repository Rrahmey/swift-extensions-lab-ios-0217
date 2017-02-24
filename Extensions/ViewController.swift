//
//  ViewController.swift
//  Extensions
//
//  Created by Flatiron School on 6/30/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var unicornLevelLabel: UILabel!


    override func viewDidLoad() {
        super.viewDidLoad()
        let fullName = "Raquel Rahmey"
        let phoneNumber = 8675309
        print(phoneNumber.half())
        print(phoneNumber.isDivisible(by: 9))
        print(phoneNumber.halved)
        print(phoneNumber.squared)
        print(fullName.whisper())
        print(fullName.shout())
        print(fullName.points)
        unicornLevelLabel.text = fullName.unicornLevel
        
        
    }
    
}


