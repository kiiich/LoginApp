//
//  WelcomeViewController.swift
//  LoginApp
//
//  Created by Николай on 25.08.2021.
//

import UIKit

class WelcomeViewController: UIViewController {

    @IBOutlet weak var greeting: UILabel!
    
    var userName = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        greeting.text = "Welcome, \(userName)"
    }

}
