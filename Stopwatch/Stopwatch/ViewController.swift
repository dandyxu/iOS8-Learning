//
//  ViewController.swift
//  Stopwatch
//
//  Created by Wenqian Xu on 02/08/2015.
//  Copyright (c) 2015 Wenqian Xu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var time: UILabel!
    
    var timer = NSTimer()
    
    var count = 0
    
    var toggleState = false

    @IBOutlet weak var BottomTool: UIToolbar!
    
    func updateTime(){
        
        count++
        
        time.text = "\(count)"
    }
    
    @IBOutlet weak var playTopause: UIBarButtonItem!
    
    @IBAction func pause(sender: AnyObject) {
        
        timer.invalidate()
        
    }
    
    @IBAction func stop(sender: AnyObject) {
        
        timer.invalidate()
        
        //Reset count
        count = 0
        time.text = "0"
    }
    
    @IBAction func play(sender: AnyObject) {

        if !toggleState {
        
            timer = NSTimer.scheduledTimerWithTimeInterval(1, target: self, selector:("updateTime"), userInfo: nil, repeats: true)
            toggleState = true
            
        }else {
            
            timer.invalidate()
            toggleState = false
        }
        
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

