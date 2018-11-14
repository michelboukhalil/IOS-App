//
//  ViewController.swift
//  Segues
//
//  Created by Michel Bou khalil on 11/10/18.
//  Copyright © 2018 Michel Bou khalil. All rights reserved.
//

import UIKit

class ViewController: UIViewController , CanReceive {
    func dataReceived(data: String) {
        label.text = data
    }
    
    
   

    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var textField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }


    @IBAction func buttonPressed(_ sender: Any) {
        
        performSegue(withIdentifier: "goToSecondScreen", sender: self)
    }
    
    @IBAction func changeToBlue(_ sender: Any) {
        
        view.backgroundColor = UIColor.blue
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToSecondScreen"{
            
            let destinationVC = segue.destination as! SecondViewController
            destinationVC.textPassedOver = textField.text!
            
            destinationVC.delegate = self
            
        }
    }
}

