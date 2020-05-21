//
//  ViewController.swift
//  TriviaApp
//
//  Created by Adam Jackrel on 4/8/20.
//  Copyright © 2020 Adam Jackrel. All rights reserved.
//

//------------------------------------------------------
//TEACHERS FEEDBACK
//------------------------------------------------------
//DESIGN: LOVE THE DESIGN. VERY COLORFUL, BRIGHT, EASY TO READ AND FRIENDLY
//DESIGN FIXES:
//VERY BORING DESIGN! SHOWS MINIMAL EFFORT.
//------------------------------------------------------


//------------------------------------------------------
//RESEARCH: GOOD QUESTIONS - BUT INSUFFICIENT RESEARCH.
//RESEARCH FIX: BE SURE TO INCLUDE CITATIONS, ACKS, AND AUTHORSHIP! VERY VERY VERY IMPORTANT!!!!
//------------------------------------------------------


//------------------------------------------------------
//CODE: NEARLY GOT EVERYTHING. SOME ADVANCED PROGRAMMING HERE THAT I EXPECT TO SEE IN YOUR OTHER ASSIGNMENTS AS WELL. USING ADVANCED LOOPS AND 2D ARRAYS WAS UNEXPECTED IN A PROJECT LIKE THIS. MY INSTRUCTIONS FOLLOWED A MUCH SIMPLER, IF NOT LONGER, WAY OF ACHIEVING A FUNCTIONAL TRIVIAAPP.

//YOU WERE MISSING MANY PARTS. ALL OF WHICH ARE TO BE FOUND IN OTHER HOMEWORKS (CHANGING BUTTON COLORS, WORKING WITH THE TIMER, ADDING SOUND EFFECTS). BUT I VERY MUCH APPRECIATE THE EFFORT YOU PUT INTO THE PROJECT. YOU LEARNED SO MUCH ABOUT PROGRAMMING DOING THIS PROJECT SO I HOPE YOU FEEL YOUR EFFORTS WERE WORTH IT!


import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var progressBar: UIProgressView!
    
    @IBOutlet var allButtons: [UIButton]!
    
    var questionNum: Int = 0

    
    var questions: [String] = [
        "72% of households served by food banks have a median annual household income of:",
        "The median student loan debt now stands at:",
        "The cost of the average meal is:",
        "___% of American citizens struggle to feed themselves.",
        "The Federal Government’s poverty threshold for a family of four is:",
        "How many children are living in poverty?",
        "What percentage of children live in a poor family in the US?",
        "How many people don't get the food they need for a healthy life worldwide?",
        "The Federal Government’s poverty threshold for a family of 9+ is:",
        "How many people are in poverty in the USA?"
    ]
    
    var choices: [[String]] = [
        ["$13,000","$9,175","$20,000","$5,000"],
        ["$17,700","$12,500","$30,000","$13,360"],
        ["$4.00","$8.50","$5.00","$3.00"],
        ["13","20","3","7"],
        ["$25,700","$40,000","$12,000","15,000"],
        ["800,000","5M","14M","500,000"],
        ["8%","30%","4%","20%"],
        ["821M","13M","300M","560M"],
        ["$17,700","$12,500","$30,000","$51,000"],
        ["70.5M","35.3M","120.9M","46.2M"]
    ]
    
    var answers: [String] = [
        "$9,175",
        "$17,700",
        "$3.00",
        "13",
        "$25,700",
        "14M",
        "20%",
        "821M",
        "$51,000",
        "46.2M"
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        for button in allButtons {
            button.layer.cornerRadius = 20
            button.layer.borderWidth = 2
            button.layer.borderColor = #colorLiteral(red: 0.2631423473, green: 0.6635478735, blue: 0.7817897201, alpha: 1)
            button.titleLabel?.numberOfLines = 0
            button.titleLabel?.textAlignment = NSTextAlignment.center
        }
        
        questionLabel.text = questions[questionNum]
        
        changeChoices()
    }

    @IBAction func choicePicked(_ sender: UIButton) {
        if(sender.titleLabel?.text == answers[questionNum]) {
            questionNum += 1
            changeQuestion()
            changeChoices()
        }
    }
    
    @objc func updateUI(){
        
    }
    
    func changeQuestion() {
        questionLabel.text = questions[questionNum]
    }
    
    func changeChoices() {
        for i in 0...3 {
            allButtons[i].setTitle(choices[questionNum][i], for: .normal)
        }
    }
}

//ack: Brian helped me make my questions and present them in the quiz
