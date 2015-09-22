//
//  ViewController.swift
//  Webview Demo
//
//  Created by Wenqian Xu on 22/09/2015.
//  Copyright (c) 2015 Wenqian Xu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var webView: UIWebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let urlPath = "http://www.techxu.com"
        let url = NSURL(string:urlPath)
        
        var request = NSURLRequest(URL:url!)
        
        webView.loadRequest(request)
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

