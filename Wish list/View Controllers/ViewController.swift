//
//  ViewController.swift
//  Wish list
//
//  Created by Igor Mikhalev on 19.12.2019.
//  Copyright © 2019 Parakluence. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var signUpButton: UIButton!
    @IBOutlet weak var loginButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setUpElements()

    }
    func setUpElements(){
        Utilities.styleFilledButton(signUpButton)
        Utilities.styleFilledButton(loginButton)

    }
    
    @IBAction func signUpTapped(_ sender: Any) {}
    @IBAction func loginTapped(_ sender: Any) {}



}

