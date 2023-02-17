//
//  ViewController.swift
//  Destini-iOS13
//
//  Created by Angela Yu on 08/08/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var storyLabel: UILabel!
    @IBOutlet weak var choice1Button: UIButton!
    @IBOutlet weak var choice2Button: UIButton!
    
    let story0 = "You see a fork in the road"
    let choice1 = "Take a left"
    let choice2 = "Take a right"
    var questionNumber = 0
    
    
    /*
    0 - fork
    1 - tiger
    2 - chest
     
     */
    
    override func viewDidLoad() {
        super.viewDidLoad()
        storyLabel.text = story0
        choice1Button.setTitle(choice1, for: .normal)
        choice2Button.setTitle(choice2, for: .normal)

    }

    @IBAction func choiceMade(_ sender: UIButton) {
//        print ("some button Pressed")
        print (sender.currentTitle!)
        
        if sender.currentTitle! == "Take a left" {
            questionNumber = 1
            updateUI()
        }
        
        if sender.currentTitle! == "Take a right" {
            questionNumber = 2
            updateUI()
        }
        
        updateUI ()
        print (questionNumber)
        
    }
    
    func updateUI () {

        storyLabel.text = stories[questionNumber].title
        choice1Button.setTitle(stories[questionNumber].choice1, for: .normal)
        choice2Button.setTitle(stories[questionNumber].choice2, for: .normal)
        

    }
    
}

