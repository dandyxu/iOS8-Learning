//
//  ViewController.swift
//  Stroing Image
//
//  Created by Wenqian Xu on 19/09/2015.
//  Copyright (c) 2015 Wenqian Xu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var bach: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let urlPath = "http://i.zeze.com/attachment/forum/201504/14/232615q17d1t77xshibl17.png"
        let url = NSURL(string:urlPath)
        
        let urlRequest = NSURLRequest(URL:url!)
        
        //Multithreading in asynchronous
        NSURLConnection.sendAsynchronousRequest(urlRequest, queue: NSOperationQueue.mainQueue(), completionHandler: {
            (response,data,error) in
            
            if error != nil {
                println("There was an error!")
                
            } else {
                
                let image = UIImage(data:data)
                
                //self.bach.image = image
                
                //Save online image and access image without Internet connection
                var DocumentDirectory:String?
                
                var paths:[AnyObject] = NSSearchPathForDirectoriesInDomains(NSSearchPathDirectory.DocumentDirectory, NSSearchPathDomainMask.UserDomainMask, true)
                
                if paths.count > 0 {
                    DocumentDirectory = paths[0] as? String
                    
                    var savePath = DocumentDirectory! + "/bach.jpg"
                    
                    NSFileManager.defaultManager().createFileAtPath(savePath, contents: data, attributes: nil)
                    
                    self.bach.image = UIImage (named: savePath)
                    
                }
                
                
            }
            
            
        })
        
        
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

