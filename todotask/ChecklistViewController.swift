//
//  ChecklistViewController.swift
//  todotask
//
//  Created by Maze Geek on 5/5/19.
//  Copyright © 2019 Amit Biswas. All rights reserved.
//

import UIKit

class ChecklistViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    //Mark: Table View Declairation
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ChecklistItem", for: indexPath)
        
        if let item = cell.viewWithTag(1000) as? UILabel {
            if indexPath.row % 5 == 0 {
            item.text = "Run a marathon"
            }  else if indexPath.row % 5 == 1 {
                item.text = "Watch a movie"
            } else if indexPath.row % 5 == 2 {
                item.text = "Code an App"
            }
            else if indexPath.row % 5 == 3 {
                item.text = "Walk the dog"
            }
            else if indexPath.row % 5 == 4 {
                item.text = "Study design pattern"
            }
            else {
                item.text = "Nothing"
            }
        }
        
        
        return cell
    }

    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if let cell = tableView.cellForRow(at: indexPath){
            if cell.accessoryType == .none {
                cell.accessoryType = .checkmark
            }else {
                cell.accessoryType = .none
            }
            tableView.deselectRow(at: indexPath, animated: true)
        }
    }
    
    
}
