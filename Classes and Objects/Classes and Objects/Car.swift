//
//  Car.swift
//  Classes and Objects
//
//  Created by Michel Bou khalil on 11/5/18.
//  Copyright © 2018 Michel Bou khalil. All rights reserved.
//

import Foundation

enum CarType {
    case Sedan
    case Coupe
    case Hatchback
}

class Car {
    
    var color = "Black"
    var numberOfSeats:Int = 5
    var typeOfCar : CarType = .Coupe
    
    init() {
        
    }
    
    convenience init(customerChosenColor : String){
        self.init()
        color = customerChosenColor
    }
    
    func drive(){
        print("Car is moving ...")
    }
}
