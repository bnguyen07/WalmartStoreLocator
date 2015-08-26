//
//  ViewController.swift
//  Walmart Store Locator
//
//  Created by Brian Nguyen on 8/23/15.
//  Copyright (c) 2015 Samoset & Squanto. All rights reserved.
//

import UIKit

class ViewController: UIViewController, NSURLConnectionDelegate {

    @IBOutlet weak var CityNameTextBox: UITextField!
    @IBOutlet weak var ZIPcodeTextBox: UITextField!
    @IBOutlet weak var LocationsTextView: UITextView!
    lazy var data = NSMutableData()
    var locations = Array<NSDictionary>()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func SearchButton(sender: UIButton) {
        var input = ZIPcodeTextBox.text
        startConnection(input)
    }
    
    func startConnection(zipcode:String) {
        let urlPath: String = "http://api.walmartlabs.com/v1/stores?apiKey=teeauzr2tm7867rfk6atybug&zip=\(zipcode)&format=json"
        var url: NSURL = NSURL(string: urlPath)!
        var request: NSURLRequest = NSURLRequest(URL: url)
        var connection: NSURLConnection = NSURLConnection(request: request, delegate: self, startImmediately: false)!
        connection.start()
    }
    
    func connection(connection: NSURLConnection!, didReceiveData data: NSData!){
        self.data.appendData(data)
    }
    func connectionDidFinishLoading(connection: NSURLConnection!) {
        var err: NSError
        // throwing an error on the line below (can't figure out where the error message is)
        var jsonResult: Array<NSDictionary> = NSJSONSerialization.JSONObjectWithData(data, options: NSJSONReadingOptions.MutableContainers, error: nil) as! Array<NSDictionary>
        locations = jsonResult
        println(locations)
    }
    
    
}

