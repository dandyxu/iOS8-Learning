//
//  ViewController.swift
//  Cat Years
//
//  Created by Wenqian Xu on 07/05/2015.
//  Copyright (c) 2015 Wenqian Xu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    //init a textfield to type input
    @IBOutlet weak var age: UITextField!
    
    //init a label to display result of action
    @IBOutlet weak var resultLabel: UILabel!

    @IBAction func findAgeButton(sender: AnyObject) {
        
        //set a variable to convert age.text to int type
        var enteredAge = age.text.toInt();
        
        if enteredAge != nil {
            
            var catYears = enteredAge! * 7;
            
            println(catYears);
            
            resultLabel.text = "Your cat is \(catYears)";
            
        }else {
            
            resultLabel.text = "Please input a number! ";
        }
        
        
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

