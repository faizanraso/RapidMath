//
//  SinglePlayerViewController.swift
//  RapidMath
//
//  Created by Faizan Rasool on 2020-06-21.
//  Copyright © 2020 Faizan Rasool. All rights reserved.
//

import Foundation
import UIKit

class SinglePlayerViewController: UIViewController {
    
    @IBOutlet weak var scoreLabel: UILabel!
    @IBOutlet weak var time: UILabel!
    @IBOutlet weak var topNumber: UILabel!
    @IBOutlet weak var bottomNumber: UILabel!
    @IBOutlet weak var symbol: UILabel!
    @IBOutlet weak var userAnswer: UITextField!
    @IBOutlet weak var ansButton: UIButton!
    @IBOutlet weak var responseField: UITextField!
    
    var score = 0
    var topNum = Int.random(in: 0..<10)
    var bottomNum = Int.random(in: 0..<10)
    var answer = 0
    var sign = "+"
    var counter = 5
    var timer = Timer()
    
    let generator = UIImpactFeedbackGenerator(style: .medium)
    let generator2 = UIImpactFeedbackGenerator(style: .heavy)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationItem.setHidesBackButton(true, animated: false)

        scoreLabel.text = String(score)
        time.text = "5"
        symbol.text = sign
        answer = topNum + bottomNum
        topNumber.text = String(topNum)
        bottomNumber.text = String(bottomNum)
        timer = Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(updateCounter), userInfo: nil, repeats: true)
    }
    
    
    //MARK: - updating timer on screen
    @objc func updateCounter() {
        if counter > 0 {
            time.text = String(counter)
            counter -= 1
        }
        else{
            //CREATE POP UP
            performSegue(withIdentifier: "postGame", sender: nil)
            counter = 5
            timer.invalidate()
        }
    }
    
    //MARK: - Sending score over to PostGameViewController
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let destinationVC = segue.destination as! PostGameViewController
        destinationVC.finalScore = score
    }
    
    //MARK: - When the nextQuestion button is pressed
    @IBAction func answerButtom(_ sender: Any) {
        //this case is for the first 5 questions
        if (score < 5){
            if (userAnswer.text == String(answer)){
                
                responseField.textColor = UIColor.white
                
                //set the new values for the numbers
                topNum = Int.random(in: 0..<10)
                bottomNum = Int.random(in: 0..<10)
                answer = topNum + bottomNum
                //display the new question
                topNumber.text = String(topNum)
                bottomNumber.text = String(bottomNum)
                
                score += 1
                scoreLabel.text = String(score)
                counter = 5
                userAnswer.text = ""
                
                generator.impactOccurred()
                
            }
            else{
                //wrong sound
                responseField.textColor = UIColor.red
                generator2.impactOccurred()
            }
        }
        else if(score >= 5 && score < 10){
            
            if (userAnswer.text == String(answer)){
                
                responseField.textColor = UIColor.white
                
                //set the new values for the numbers
                topNum = Int.random(in: 10..<99)
                bottomNum = Int.random(in: 10..<99)
                answer = topNum + bottomNum
                //display the new question
                topNumber.text = String(topNum)
                bottomNumber.text = String(bottomNum)
                
                score += 1
                scoreLabel.text = String(score)
                counter = 7
                userAnswer.text = ""
                
                generator.impactOccurred()
                
            }
            else{
                //wrong sound
                responseField.textColor = UIColor.red
                generator2.impactOccurred()
            }
        }
        else if(score >= 10 && score < 20){
            if (userAnswer.text == String(answer)){
                
                responseField.textColor = UIColor.white
                
                //set the new values for the numbers
                topNum = Int.random(in: 100..<999)
                bottomNum = Int.random(in: 100..<999)
                answer = topNum + bottomNum
                //display the new question
                topNumber.text = String(topNum)
                bottomNumber.text = String(bottomNum)
                
                score += 1
                scoreLabel.text = String(score)
                counter = 10
                userAnswer.text = ""
                
                generator.impactOccurred()
            }
            else{
                //wrong sound
                responseField.textColor = UIColor.red
                generator2.impactOccurred()
            }
            
        }
        else if(score >= 20 && score < 30){
            if (userAnswer.text == String(answer)){
                
                responseField.textColor = UIColor.white
                
                //set the new values for the numbers
                topNum = Int.random(in: 0..<9)
                bottomNum = Int.random(in: 0..<9)
                answer = topNum * bottomNum
                //display the new question
                topNumber.text = String(topNum)
                bottomNumber.text = String(bottomNum)
                
                score += 1
                scoreLabel.text = String(score)
                counter = 5
                userAnswer.text = ""
                
                sign = "x"
                symbol.text = sign
                
                generator.impactOccurred()
                
            }
            else{
                //wrong sound
                responseField.textColor = UIColor.red
                generator2.impactOccurred()
            }
        }
        else if(score >= 30 && score < 35){
            if (userAnswer.text == String(answer)){
                
                responseField.textColor = UIColor.white
                
                //set the new values for the numbers
                topNum = Int.random(in: 0..<9)
                bottomNum = Int.random(in: 0..<99)
                answer = topNum * bottomNum
                //display the new question
                topNumber.text = String(topNum)
                bottomNumber.text = String(bottomNum)
                
                score += 1
                scoreLabel.text = String(score)
                counter = 10
                userAnswer.text = ""
                
                generator.impactOccurred()
            }
            else{
                //wrong sound
                responseField.textColor = UIColor.red
                generator2.impactOccurred()
            }
        }
        else if(score >= 35 && score < 45){
            if (userAnswer.text == String(answer)){
                
                responseField.textColor = UIColor.white
                
                //set the new values for the numbers
                topNum = Int.random(in: 0..<99)
                bottomNum = Int.random(in: 0..<99)
                answer = topNum * bottomNum
                //display the new question
                topNumber.text = String(topNum)
                bottomNumber.text = String(bottomNum)
                
                score += 1
                scoreLabel.text = String(score)
                counter = 12
                userAnswer.text = ""
                
                generator.impactOccurred()
            }
            else{
                //wrong sound
                responseField.textColor = UIColor.red
                generator2.impactOccurred()
            }
        }
        else if(score >= 45){
            if (userAnswer.text == String(answer)){
                
                responseField.textColor = UIColor.white
                
                //set the new values for the numbers
                topNum = Int.random(in: 0..<999)
                bottomNum = Int.random(in: 0..<999)
                answer = topNum * bottomNum
                //display the new question
                topNumber.text = String(topNum)
                bottomNumber.text = String(bottomNum)
                
                score += 1
                scoreLabel.text = String(score)
                counter = 15
                userAnswer.text = ""
                
                generator.impactOccurred()
            }
            else{
                //wrong sound
                responseField.textColor = UIColor.red
                generator2.impactOccurred()
            }
        }
    }
    
    
    
    
}
