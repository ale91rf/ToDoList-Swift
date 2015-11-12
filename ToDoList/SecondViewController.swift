//
//  SecondViewController.swift
//  ToDoList
//
//  Created by Ale Ramírez Fernández on 11/11/15.
//  Copyright © 2015 AleFernandez. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet weak var mTxtItem: UITextField!
    
    @IBAction func btnAddItem(sender: AnyObject) {
        
        mToDoList.append(mTxtItem.text!)
        mTxtItem.text = ""
        NSUserDefaults.standardUserDefaults().setObject(mToDoList, forKey: "toDoList")
        
    }
    
    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
        self.view.endEditing(true)
    }
    
    func textFieldShouldReturn(textField: UITextField!) -> Bool {
        
        mTxtItem.resignFirstResponder()
        return true
        
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

