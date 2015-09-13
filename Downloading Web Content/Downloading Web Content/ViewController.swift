//
//  ViewController.swift
//  Downloading Web Content
//
//  Created by Wenqian Xu on 13/09/2015.
//  Copyright (c) 2015 Wenqian Xu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var webView: UIWebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        //in Objective-C, url is different from String. So, in swift, it should convert into NSURL
        let url = NSURL(string: "http://www.techxu.com")
        
        let task = NSURLSession.sharedSession().dataTaskWithURL(url!){
            (data, response, error) in
            
            if error == nil {
                
                var urlContent = NSString(data:data, encoding: NSUTF8StringEncoding)
                
                println(urlContent)
                
                //Dispatch asynchronous loading
                dispatch_async(dispatch_get_main_queue()){
                
                    //Display urlContent as readable format
                    self.webView.loadHTMLString(urlContent as! String, baseURL: nil)
                    
                }
            }
        }
        
        //Run the task
        task.resume()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

