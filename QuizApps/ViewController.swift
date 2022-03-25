//
//  ViewController.swift
//  QuizApps
//
//  Created by suriya taothongkom on 21/3/2565 BE.
//

import UIKit

class ViewController: UIViewController {

    
    
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var progressbar: UIProgressView!
    @IBOutlet weak var falseBtn: UIButton!
    @IBOutlet weak var trueBtn: UIButton!
    
    let quiz = [
            Question(text:  "1ONE + Two equal to Six" , answer: "True"),
            Question(text: "2Two + Two is greater than One" , answer:"True"),
            Question(text:   "3Three + Two equal to Five" , answer: "False")
    ]
    
    var questionNumber = 0
    override func viewDidLoad() {
        super.viewDidLoad()
        
        updateUI()
        
    }
    

    @IBAction func answerBtnPress(_ sender: UIButton) {
        
        let userAnswer = sender.currentTitle // true , false
        let actualAnswer = quiz[questionNumber].answer
        

        if userAnswer  == actualAnswer {
                print("Right!")
        }else{
            
            print("Wrong!")
        }
        
        if questionNumber + 1 < quiz.count    {
            questionNumber += 1
        }else{
            
            questionNumber = 0
        }
        
        updateUI()
    }
    
    func updateUI() {
        questionLabel.text = quiz[questionNumber][0]
        
        
    }
    
    

    
    
    
}

