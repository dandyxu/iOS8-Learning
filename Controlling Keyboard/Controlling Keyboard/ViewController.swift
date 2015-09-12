//
//  ViewController.swift
//  Controlling Keyboard
//
//  Created by Wenqian Xu on 12/09/2015.
//  Copyright (c) 2015 Wenqian Xu. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var InputText: UITextField!
    
    @IBOutlet weak var LabelDisplay: UILabel!
    
    @IBAction func ButtonPressed(sender: AnyObject) {
        
        LabelDisplay.text = InputText.text
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        self.InputText.delegate = self
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //Click away from keyboard to close the keyboard
    override func touchesBegan(touches: Set<NSObject>, withEvent event: UIEvent) {
        
        self.view.endEditing(true)
    }
    
    //Click Return button to close the keyboard
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        
        textField.resignFirstResponder()
        
        return true
        
    }


}

