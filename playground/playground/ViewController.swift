//
//  ViewController.swift
//  playground
//
//  Created by Maik Groten on 18.06.17.
//  Copyright © 2017 Maik Groten. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var baseInmg: UITextField!
    @IBOutlet var shotsInmg: UITextField!
    @IBOutlet var myLabel1: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func myCalculator(_ sender: Any) {
        let myValue1 = Double(baseInmg.text!)
        let myValue2 = Double(shotsInmg.text!)
        

        let myResult1 = Double(myValue1! + myValue2!)
        
        myLabel1.text = "Du hast \(myResult1)ml mit mg"
    }
    


}

