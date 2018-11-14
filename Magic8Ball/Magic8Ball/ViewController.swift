//
//  ViewController.swift
//  Magic8Ball
//
//  Created by Michel Bou khalil on 10/26/18.
//  Copyright © 2018 Michel Bou khalil. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let answerArray = ["ball1","ball2","ball3","ball4","ball5" ]
    
    var random:Int = 0
    
    @IBOutlet weak var ballAnswers: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        randomAnswers()
    }

    @IBAction func askQuestions(_ sender: Any) {
        
        randomAnswers()
        
    }
    
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        randomAnswers()
    }
    
    func randomAnswers(){
        
        random = Int.random(in: 0 ... 4 )
        
        ballAnswers.image = UIImage(named: answerArray[random])
        
    }
    
}

