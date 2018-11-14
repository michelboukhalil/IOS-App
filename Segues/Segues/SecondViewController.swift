 //
//  SecondViewController.swift
//  Segues
//
//  Created by Michel Bou khalil on 11/10/18.
//  Copyright © 2018 Michel Bou khalil. All rights reserved.
//

import UIKit
 
 protocol CanReceive {
    func dataReceived(data:String)
 }

class SecondViewController: UIViewController {
    
    var delegate : CanReceive?
    
    
    var textPassedOver:String?

    @IBOutlet weak var textField: UITextField!
    @IBOutlet weak var label: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        label.text = textPassedOver

        // Do any additional setup after loading the view.
    }
    

    @IBAction func buttonPressed(_ sender: Any) {
        delegate?.dataReceived(data: textField.text!)
        dismiss(animated: true, completion: nil )
    }
    
    

}
