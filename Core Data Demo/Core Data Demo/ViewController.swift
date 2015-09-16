//
//  ViewController.swift
//  Core Data Demo
//
//  Created by Wenqian Xu on 16/09/2015.
//  Copyright (c) 2015 Wenqian Xu. All rights reserved.
//

import UIKit
import CoreData

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        var AppDel:AppDelegate = UIApplication.sharedApplication().delegate as! AppDelegate
        
        var context:NSManagedObjectContext = AppDel.managedObjectContext!
    
        var newUser = NSEntityDescription.insertNewObjectForEntityForName("User", inManagedObjectContext: context) as! NSManagedObject
        
        newUser.setValue("Dandy", forKey: "username")
        newUser.setValue("Pass", forKey: "password")
        newUser.setValue("dandyjefferson@gmail.com", forKey: "email")
        
        context.save(nil)
        
        var request = NSFetchRequest(entityName: "User")
        
        request.returnsObjectsAsFaults = false
        
        var results = context.executeFetchRequest(request, error: nil)
        
        println(results)
        
        if results?.count > 0{
        
            for result: AnyObject in results!{
            
            println(result.valueForKey("username")!)
            
            }
        }else {
            println("No results")
            
        }
        
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

