//
//  quizBrain.swift
//  Quizzler-iOS13
//
//  Created by Jatin Kindra on 01/05/22.
//  Copyright © 2022 The App Brewery. All rights reserved.
//

import Foundation


struct QuizBrain {
    
    let quiz = [
        Question(q: "Carrefour has its outlet in India.", a: "False"),
        
        Question(q: "CarrefourUAE is under MAF-Retail.", a: "True"),
        
        Question(q: "Headquarters of MAF is in Dubai.", a: "True"),
        
        Question(q: "CEO of MAF is in Mr. Alain Bejjani.", a: "True"),
        
        Question(q: "India Office of MAF is loacted in Bangalore.", a: "False"),
        
        Question(q: "IOS App of CarrefourUAE has rating 4+ .", a: "True")
    ]
    
    var questionNumber = 0
    
    var score = 0
    
    mutating func checkAnswer(_ userAnswer:String) -> Bool
    {
        let actualAns = quiz[questionNumber].answer
        if userAnswer == actualAns {
            score += 1
            return true
        }
        else {
            return false
        }
        
    }
    
    func getQuestionText()-> String {
       quiz[questionNumber].text
    }
    
    func getProgress() -> Float {
         Float(questionNumber+1)/Float(quiz.count)
    }
    
    mutating func nextQuestion(){
        questionNumber = (questionNumber + 1)%6
    }
    
    mutating func getScore() -> Int {
        if questionNumber == 0
        {
            score = 0
        }
        return score
    }
}
