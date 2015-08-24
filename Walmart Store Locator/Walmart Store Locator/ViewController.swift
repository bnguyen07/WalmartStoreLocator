//
//  ViewController.swift
//  Walmart Store Locator
//
//  Created by Brian Nguyen on 8/23/15.
//  Copyright (c) 2015 Samoset & Squanto. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var CityNameTextBox: UITextField!
    @IBOutlet weak var ZIPcodeTextBox: UITextField!
    @IBOutlet weak var LocationsTextView: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func SearchButton(sender: UIButton) {
        
    }

}

