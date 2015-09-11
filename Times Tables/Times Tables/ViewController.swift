//
//  ViewController.swift
//  Times Tables
//
//  Created by Wenqian Xu on 03/09/2015.
//  Copyright (c) 2015 Wenqian Xu. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITableViewDelegate {

    @IBOutlet weak var SliderValue: UISlider!
    
    @IBOutlet weak var table: UITableView!
    
    @IBAction func SliderAction(sender: AnyObject){
        
        table.reloadData()
        print(SliderValue)
        
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int{
        
        return 20
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell{
        
        let cell = UITableViewCell(style: UITableViewCellStyle.Default, reuseIdentifier: "Cell")
        
        let TimeTables = Int(SliderValue.value * 20)
        
        cell.textLabel?.text = String(TimeTables * (indexPath.row + 1))
        
        return cell
        
        
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

