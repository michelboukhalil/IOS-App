//
//  SelfDrivingCar.swift
//  Classes and Objects
//
//  Created by Michel Bou khalil on 11/6/18.
//  Copyright © 2018 Michel Bou khalil. All rights reserved.
//

import Foundation

//SelfDrivingCar inheret Car class

class SelfDrivingCar : Car {
    
    var destination : String?
    
    override func drive() {
        super.drive()
        
        if let userSetDestination = destination{
            print("driving towards " + userSetDestination)
        }
        
        
    }
    
}
