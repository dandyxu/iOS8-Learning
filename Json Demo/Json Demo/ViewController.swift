//
//  ViewController.swift
//  Json Demo
//
//  Created by Wenqian Xu on 19/09/2015.
//  Copyright (c) 2015 Wenqian Xu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let urlPath = "http://212.111.43.104/app/postcard-community-list.php"
        let url = NSURL(string:urlPath)
        let session = NSURLSession.sharedSession()
        let task = session.dataTaskWithURL(url!, completionHandler:{
            data, response, error -> Void in
            if (error != nil) {
                println(error)
            }else {
                let jsonResult = NSJSONSerialization.JSONObjectWithData(data, options: NSJSONReadingOptions.MutableContainers, error: nil) as! NSDictionary
                
                println(jsonResult["code"] as! Int)
                
                if let jsonArray:NSArray = jsonResult["data"] as? NSArray {
                    for item in jsonArray {
                        println("postcuard_uid: " + (item["postcard_uid"] as! String))
                        println("destination_country: " + (item["destination_country"] as! String))
                        println("original_country: " + (item["original_country"] as! String))
                        println("like_number: " + (item["like_number"] as! String))
                        
                        //println(jsonArray)
                    }
                }
             
            
            }
        })
        task.resume()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

