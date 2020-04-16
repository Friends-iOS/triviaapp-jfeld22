//
//  ViewController.swift
//  TriviaApp
//
//  Created by Adam Jackrel on 4/8/20.
//  Copyright © 2020 Adam Jackrel. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var progressBar: UIProgressView!
    

    @IBOutlet var questionLabel: UILabel!
    
    var questionNumber : Int = 0
    
    var trueFalse : [Bool] = [true]
    
    var questions = ["72% of households served by food banks have a median annual household income of $9,175"]
    override func viewDidLoad() {
        super.viewDidLoad()
        questionLabel.text = questions[questionNumber]
        progressBar.setProgress(0.1, animated : false)
        
       
    }
    
    //UPDATEUI WILL UPDATE ANY ON SCREEN ELEMENTS AS WELL AS SETUP EVERYTHING FOR OUR FIRST PLAY THROUGH
    @objc func updateUI(){
    

}
    
}
//ack: Brian helped me make the first question.

