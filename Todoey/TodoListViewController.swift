//
//  ViewController.swift
//  Todoey
//
//  Created by Sarah Roberts on 10/11/18.
//  Copyright © 2018 Sarah Roberts. All rights reserved.
//

import UIKit

class TodoListViewController: UITableViewController {
    
    
        let itemArray = ["Buy Cat Food", "Order Books", "Hair Appointment"]
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }


    //MARK - Tableview Datasource Methods
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return itemArray.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "ToDoItemCell", for: indexPath)
        
        cell.textLabel?.text = itemArray[indexPath.row]
        
        return cell
        
    }
    
    
    
}

