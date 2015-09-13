//
//  SecondViewController.swift
//  To Do List
//
//  Created by Wenqian Xu on 12/09/2015.
//  Copyright (c) 2015 Wenqian Xu. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var Item: UITextField!
    
    @IBAction func AddItem(sender: AnyObject) {
        
        toDoList.append(Item.text)
        
        Item.text = ""
        
        NSUserDefaults.standardUserDefaults().setObject(toDoList, forKey: "toDoList")
        
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.Item.delegate = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func touchesBegan(touches: Set<NSObject>, withEvent event: UIEvent) {
        
        self.view.endEditing(true)
        
    }

    func textFieldShouldReturn(textField:UITextField) ->Bool{
        
        Item.resignFirstResponder()
        
        return true
    }

}

