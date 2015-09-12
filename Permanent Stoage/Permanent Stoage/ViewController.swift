//
//  ViewController.swift
//  Permanent Stoage
//
//  Created by Wenqian Xu on 12/09/2015.
//  Copyright (c) 2015 Wenqian Xu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        //Store the data
        //NSUserDefaults.standardUserDefaults().setObject("Dandy", forKey: "name")
        
        //Retrieve the data
        var name = NSUserDefaults.standardUserDefaults().objectForKey("name") as! String
        
        println(name)
        
        var arr = [1, 2, 3]
        
        NSUserDefaults.standardUserDefaults().setObject(arr, forKey: "array")
        
        var recalledArray = NSUserDefaults.standardUserDefaults().objectForKey("array") as! NSArray
        
        println(recalledArray[2])
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

