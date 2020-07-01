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
    @IBOutlet weak var highScoreLabel: UILabel!
    let defaults = UserDefaults.standard
    var finalScore = 0
    var highScore = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationItem.setHidesBackButton(true, animated: false)
        
        //checks if a new high score was set
        if (finalScore > highScore){
            highScore = finalScore
            defaults.set(highScore, forKey: "HIGHSCORE")
        }
        
        //displays highscore and game score
        finalScoreText.text = String(finalScore)
        highScoreLabel.text = String(highScore)
        
    }
}
