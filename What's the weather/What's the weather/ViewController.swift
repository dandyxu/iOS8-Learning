//
//  ViewController.swift
//  What's the weather
//
//  Created by Wenqian Xu on 15/09/2015.
//  Copyright (c) 2015 Wenqian Xu. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var cityTextField: UITextField!
    @IBOutlet weak var resultLabel: UILabel!
    
    @IBAction func checkButton(sender: AnyObject) {
        
        var url = NSURL(string: "http://www.weather-forecast.com/locations/" + cityTextField.text.stringByReplacingOccurrencesOfString(" ", withString: "-" ) + "/forecasts/latest")
        
        if url != nil {
            
            let task = NSURLSession.sharedSession().dataTaskWithURL(url!, completionHandler: {
                (data, response, error) -> Void in
                
                var urlError = false
                
                var weather = ""
                
                if error == nil {
                    
                    var urlContent = NSString(data: data, encoding: NSUTF8StringEncoding)! as NSString
                    //println(urlContent)
                    
                    var urlContentArray = urlContent.componentsSeparatedByString("<span class=\"phrase\">")
                    
                    if urlContentArray.count > 1 {
                        
                        //println(urlContentArray[0])
                        //println(urlContentArray[1])
                        //println(urlContentArray[2])
                        var weatherArray = urlContentArray[1].componentsSeparatedByString("</span>")
                        
                        weather = weatherArray[0] as! String
                        
                        //Change HTML &deg; into normal degree sign º
                        weather = weather.stringByReplacingOccurrencesOfString("&deg;", withString: "º")
                        
                    }else {
                        
                        urlError = true
                    }
                    
                }else {
                    urlError = true
                }
                
                //Asychronized dispatch
                dispatch_async(dispatch_get_main_queue()){
                    if urlError == true {
                        
                        self.showError()
                        
                    }else {
                        //Display the result to resultLabel
                        self.resultLabel.text = weather
                    }
                }
            })
            
            task.resume()
            
        }else {
            
            showError()
            
        }
        
    }
    
    func showError(){
        
        resultLabel.text = "Will not be able to find the weather for " + cityTextField.text + ". Please try again!"

    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        self.cityTextField.delegate = self
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func touchesBegan(touches: Set<NSObject>, withEvent event: UIEvent) {
        
        self.view.endEditing(true)
        
    }
    
    func textFieldShouldReturn(textField: UITextField) -> Bool{
        
        textField.resignFirstResponder()
        
        return true
        
    }


}

