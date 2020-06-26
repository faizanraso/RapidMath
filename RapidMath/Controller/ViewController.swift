//
//  ViewController.swift
//  RapidMath
//
//  Created by Faizan Rasool on 2020-06-21.
//  Copyright © 2020 Faizan Rasool. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var singlePlayerButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        navigationController?.isNavigationBarHidden = true
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.isNavigationBarHidden = true
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        navigationController?.isNavigationBarHidden = false
    }
}


