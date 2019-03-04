//
//  LoginViewController.swift
//  todolist
//
//  Created by home on 3/4/19.
//  Copyright © 2019 home. All rights reserved.
//

import UIKit
import Foundation

class LoginViewController: UIViewController {

    @IBOutlet weak var loginField: UITextField!

    @IBOutlet weak var passwordField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    @IBAction func loginButtonTapped(_ sender: Any) {
        navigateToMain()
    }
    
    private func navigateToMain() {
        let mainStoryboard = UIStoryboard(name: "Main", bundle: Bundle.main)
        guard let mainNavigationVC = mainStoryboard.instantiateViewController(withIdentifier: "NavigationalController") as? NavigationalController else {
            return
        }
        print(mainNavigationVC.topViewController)
        print(mainNavigationVC.viewControllers)
        if let mainVC = mainNavigationVC.topViewController as? FirstViewController{
            mainVC.userName = loginField.text
            mainVC.password = passwordField.text
        }
        present(mainNavigationVC, animated: true, completion: nil)
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
