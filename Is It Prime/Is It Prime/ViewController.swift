//
//  ViewController.swift
//  Is It Prime
//
//  Created by Wenqian Xu on 29/07/2015.
//  Copyright (c) 2015 Wenqian Xu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var NumberTextField: UITextField!
    
    @IBOutlet weak var ResultLabel: UILabel!
    
    @IBAction func PrimeButton(sender: AnyObject) {
        
        var number = NumberTextField.text.toInt()
        
        if number != nil {
            
            var unwrappedNumber = number!
            
            var isPrime = true
            
            if unwrappedNumber == 1 {
                
                isPrime = false
                
            }else if unwrappedNumber != 2 {
                
                for var i = 2; i < unwrappedNumber; i++
                {
                    if unwrappedNumber % i == 0{
                        
                        isPrime = false
                        
                    }
                }
            }
            
            if isPrime == true {
                
                ResultLabel.text = "\(unwrappedNumber) is Prime!"
            }else {
                
                ResultLabel.text = "\(unwrappedNumber) is not Prime!"
            }
            
        }else {
            
            ResultLabel.text = "Please input a number!"
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

