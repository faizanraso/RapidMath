//
//  PostGameViewController.swift
//  RapidMath
//
//  Created by Faizan Rasool on 2020-06-25.
//  Copyright © 2020 Faizan Rasool. All rights reserved.
//

import Foundation
import UIKit

class PostGameViewController: UIViewController {
    
    @IBOutlet weak var finalScoreText: UILabel!
    var finalScore = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationItem.setHidesBackButton(true, animated: false)
        
        finalScoreText.text = String(finalScore)
        
    }
}
