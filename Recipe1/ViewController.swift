//
//  ViewController.swift
//  Recipe1
//
//  Created by Mark Infantino on 5/18/17.
//  Copyright © 2017 Mark Infantino. All rights reserved.
//

import UIKit

class ViewController: UITableViewController {

    let array = ["item1", "item2", "item3"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        tableView.rowHeight = 70
        tableView.backgroundView = UIImageView(image: UIImage(named: "breads"))
    }

    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        navigationController?.navigationBar.alpha = 0.5
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return array.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "customcell")
        
        if (indexPath.item % 2 == 0){
            cell?.backgroundColor = UIColor.clear
        }
        else {
            cell?.backgroundColor = UIColor.white.withAlphaComponent(0.2)
            cell?.textLabel?.backgroundColor = UIColor.white.withAlphaComponent(0.0)
        }
        
        cell?.textLabel?.textColor = UIColor.white
        cell?.textLabel?.text = array[indexPath.item]
        return cell!
    }
    
}

