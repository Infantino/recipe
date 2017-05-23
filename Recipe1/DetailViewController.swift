//
//  DetailViewController.swift
//  Recipe1
//
//  Created by Mark Infantino on 5/20/17.
//  Copyright © 2017 Mark Infantino. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet weak var recipeContent: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        recipeContent.backgroundColor = UIColor.black.withAlphaComponent(0.2)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
