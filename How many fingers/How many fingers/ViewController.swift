//
//  ViewController.swift
//  How many fingers
//
//  Created by Wenqian Xu on 21/07/2015.
//  Copyright (c) 2015 Wenqian Xu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var GuessNumberTextField: UITextField!
    
    @IBOutlet weak var resultLabel: UILabel!
    
    @IBAction func GuessButton(sender: AnyObject) {
        
        var randomNumber = arc4random_uniform(6)
        
        var guessInt = GuessNumberTextField.text.toInt()
        
        if guessInt != nil {
            
            if Int(randomNumber) == guessInt {
                
                resultLabel.text = "Correct!"
            }else {
                
                resultLabel.text = "Nope, it was \(randomNumber)"
            }
            
        }else {
            
            resultLabel.text = "Please input a number 0 - 5"
        }
        
        println(GuessNumberTextField.text)
        
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

