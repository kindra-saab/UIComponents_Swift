//
//  ViewController.swift
//  Quizzler-iOS13
//
//  Created by Angela Yu on 12/07/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var scoreLabel: UILabel!
    @IBOutlet weak var progressBar: UIProgressView!
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var trueButton: UIButton!
    @IBOutlet weak var falseButton: UIButton!
    
    
    var quizBrain = QuizBrain()

    override func viewDidLoad() {
        
        trueButton.layer.cornerRadius = 20
        trueButton.layer.borderWidth = 5
        trueButton.layer.borderColor = UIColor(red: 95/255, green: 148/255, blue: 222/255, alpha: 0.8).cgColor
        
        falseButton.layer.cornerRadius = 20
        falseButton.layer.borderWidth = 5
        falseButton.layer.borderColor = UIColor(red: 95/255, green: 148/255, blue: 222/255, alpha: 0.8).cgColor
        
        super.viewDidLoad()
        
        updateUI()
    }
    
    @IBAction func answerButtonPressed(_ sender: UIButton) {

        let userAns   = sender.currentTitle
        let response = quizBrain.checkAnswer(userAns!)
        
        if response {
            sender.backgroundColor = UIColor.green
        } else {
            sender.backgroundColor = UIColor.red
        }

        quizBrain.nextQuestion()
        
        Timer.scheduledTimer(timeInterval: 0.2, target: self, selector: #selector(updateUI), userInfo: nil, repeats: false)

    }

   @objc func updateUI() {
        
//        quizBrain.nextQuestion()
        progressBar.progress = quizBrain.getProgress()
        
        print("I am Called")
        
        trueButton.backgroundColor = UIColor.clear
        falseButton.backgroundColor = UIColor.clear
        questionLabel.text = quizBrain.getQuestionText()
        scoreLabel.text = "Score: \(quizBrain.getScore())"
    }

}

