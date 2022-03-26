//
//  ViewController.swift
//  QuizApps
//
//  Created by suriya taothongkom on 21/3/2565 BE.
//

import UIKit
import AVFoundation
class ViewController: UIViewController {

    
    @IBOutlet weak var scoreLabel: UILabel!
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var progressbar: UIProgressView!
    @IBOutlet weak var falseBtn: UIButton!
    @IBOutlet weak var trueBtn: UIButton!
    
    var quizBrain = QuizBrain()
   
    override func viewDidLoad() {
        super.viewDidLoad()
       
        updateUI()
       
        
    }
    
    @IBAction func answerBtnPress(_ sender: UIButton) {
        
        let userAnswer = sender.currentTitle! // true , false
        
     // from QuizBrain.swift //
//        let userGotItRight =  quizBrain.checkAnswer(userAnswer)
        let userGotItRight = quizBrain.checkAnswer(userAnswer)
        if userGotItRight {
            sender.backgroundColor = UIColor.green
        }else{
            sender.backgroundColor = UIColor.red
        }
        
        quizBrain.nextQuestion()
     
        Timer.scheduledTimer(timeInterval: 0.2 , target: self, selector: #selector(updateUI), userInfo: nil, repeats: false)
       
    }
    
    @objc func updateUI() {
        questionLabel.text =  quizBrain.getQuestionText()
        progressbar.progress = quizBrain.getProgress()
        scoreLabel.text = "Score:\(quizBrain.getScore())"
        trueBtn.backgroundColor = UIColor.clear
        falseBtn.backgroundColor = UIColor.clear
        
        
    }
    

    
    
    
}

