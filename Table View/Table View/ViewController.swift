//
//  ViewController.swift
//  Table View
//
//  Created by Wenqian Xu on 02/09/2015.
//  Copyright (c) 2015 Wenqian Xu. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITableViewDelegate{
    
    //create a array for cellcontent
    var cellcontent = ["Dandy", "Xu", "Millie", "Wu"]
    
    //method to return count of Table view cells
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int{
        
        return cellcontent.count
        
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell{
        
        let cell = UITableViewCell(style: UITableViewCellStyle.Default, reuseIdentifier: "Cell")
        
        cell.textLabel?.text = cellcontent[indexPath.row]
        
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

