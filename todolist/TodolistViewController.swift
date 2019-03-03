//
//  ViewController.swift
//  todolist
//
//  Created by home on 3/3/19.
//  Copyright © 2019 home. All rights reserved.
//

import UIKit

class TodolistViewController: UITableViewController
    {

//        let list1 = ["do laundry", "do homework", "learn coding"]
//        let list2 = ["get shit done", "do all the shit", "do shit"]
//        let list3 = ["make money", "get women"]
    
    let twoDimensionalArray = [
        ["do laundry", "do homework", "learn coding"],
        ["get shit done", "do all the shit", "do shit"],
        ["make money", "get women"]
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        navigationItem.title = "To Do List"
        navigationController?.navigationBar.prefersLargeTitles = true
        //must register in order to dequeue cell item
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "Checklistitem")
    }
    
    override func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let label = UILabel()
        label.text = "Header"
        label.backgroundColor = UIColor.lightGray
        return label
        
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return twoDimensionalArray.count
    }
    
    //Step 1 - return desired number or cells
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return twoDimensionalArray[section].count
//        if section == 0
//        {
//            return list1.count
//        }
//            return list2.count
        
    }
//
    //Step 2 - display the cell, assign to reuse identifier to tell the program what to show within the cell
    //indexPath -> a list of indexes that represents a path to nested arrays
    //cell.viewWithTag allows casting the cell with content
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Checklistitem", for: indexPath)
        
//        let list = self.list[indexPath.row]
        //ternary operator for displaying different content at different rows
//        let list = indexPath.section == 0 ? self.list1[indexPath.row] :
//            list2[indexPath.row]
        let list = twoDimensionalArray[indexPath.section][indexPath.row]
        cell.textLabel?.text = list
//
//        if let label = cell.viewWithTag(1000) as? UILabel{
//            if indexPath.row == 0 {
//                label.text = "Run a marathon"
//            } else {
//                label.text = "sleep"
//            }
//        }
        return cell
    }

}

