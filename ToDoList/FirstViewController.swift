//
//  FirstViewController.swift
//  ToDoList
//
//  Created by Ale Ramírez Fernández on 11/11/15.
//  Copyright © 2015 AleFernandez. All rights reserved.
//

import UIKit

var mToDoList = [String]()

class FirstViewController: UIViewController, UITableViewDelegate {

    @IBOutlet weak var mTableView: UITableView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if NSUserDefaults.standardUserDefaults().objectForKey("toDoList") != nil {
        
            mToDoList = NSUserDefaults.standardUserDefaults().objectForKey("toDoList") as! [String]
        
        }
        
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
        
    }
    
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return mToDoList.count
        
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        let mCell = UITableViewCell(style: UITableViewCellStyle.Default, reuseIdentifier: "Cell")
        
        mCell.textLabel?.text = mToDoList[indexPath.row]
        
        return mCell
        
    }
    
    override func viewDidAppear(animated: Bool) {
        mTableView.reloadData()
    }
    
    


}

