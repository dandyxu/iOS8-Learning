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
    
        /* Add specfic item into database */
//        var newUser = NSEntityDescription.insertNewObjectForEntityForName("User", inManagedObjectContext: context) as! NSManagedObject
//
//        newUser.setValue("DandyJefferson3", forKey: "username")
//        newUser.setValue("Pass3", forKey: "password")
//        newUser.setValue("dandyjefferson@gmail.com", forKey: "email")
//        context.save(nil)
        
        var request = NSFetchRequest(entityName: "User")
        
        request.returnsObjectsAsFaults = false
        
        //Search for the specfic item
        request.predicate = NSPredicate(format: "username = %@", "DandyJefferson")
        
        var results = context.executeFetchRequest(request, error: nil)
        
        //println(results)
        
        if results?.count > 0{
        
            for result: AnyObject in results!{
            
                //println(results)
//                if let pass = result.password!{
//                    //println(pass)
//                }
                
                if let username = result.valueForKey("username") as? String{
                    //println(user)
                    if username == "DandyJefferson" {
                        // Delete specfic item
//                        context.deleteObject(result as! NSManagedObject)
//                        println(username + " has been deleted")
                     //println(username)
                        //Update spefic item in the database
                        result.setValue("Dandy", forKey: "username")
                    }

                }
                println(result.valueForKey("username") as! String)
                println(result.valueForKey("password") as! String)
                println(result.valueForKey("email") as! String)
                
                context.save(nil)
                
                    //println(result.valueForKey("username")!)
            
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

