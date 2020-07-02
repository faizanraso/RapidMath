//
//  ViewController.swift
//  RapidMath
//
//  Created by Faizan Rasool on 2020-06-21.
//  Copyright © 2020 Faizan Rasool. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var highScoreLabel: UILabel!
    var defaults = UserDefaults.standard
    var highScore = 0
    
    @IBOutlet weak var singlePlayerButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        navigationController?.isNavigationBarHidden = true
        
        //user defaults
        highScore = defaults.integer(forKey: "HIGHSCORE")
        if (defaults.integer(forKey: "HIGHSCORE") as? Int) != nil{
            highScoreLabel.text = String(highScore)
        }

    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.isNavigationBarHidden = true
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        navigationController?.isNavigationBarHidden = false
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let destinationVC = segue.destination as! SinglePlayerViewController
        destinationVC.highScore = highScore
        
    }
}


