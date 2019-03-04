//
//  FirstViewController.swift
//  todolist
//
//  Created by home on 3/4/19.
//  Copyright © 2019 home. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {

    var userName: String?
    var password: String?
    
    @IBOutlet weak var label: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print(userName)
        print(password)
        label.text = (userName)
        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
