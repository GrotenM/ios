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
        
        //Looks for single or multiple taps.
        let tap: UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: "dismissKeyboard")
        
        //Uncomment the line below if you want the tap not not interfere and cancel other interactions.
        //tap.cancelsTouchesInView = false
        
        view.addGestureRecognizer(tap)
    }
    
    //Calls this function when the tap is recognized.
    func dismissKeyboard() {
        //Causes the view (or one of its embedded text fields) to resign the first responder status.
        view.endEditing(true)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func myCalculator(_ sender: Any) {
        let myValue1 = Double(baseInmg.text!)
        let myValue2 = Double(shotsInmg.text!)
        

        let myResult1 = myValue1! + myValue2!
        let nikotin1 = (myValue2! * 20) / myResult1
        
        myLabel1.text = "Du hast \(myResult1)ml mit \(nikotin1)mg"
    }
    


}

