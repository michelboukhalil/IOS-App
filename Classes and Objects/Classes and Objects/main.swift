//
//  main.swift
//  Classes and Objects
//
//  Created by Michel Bou khalil on 11/5/18.
//  Copyright © 2018 Michel Bou khalil. All rights reserved.
//

import Foundation

let myCar = Car()
let someRichGuysCar = Car(customerChosenColor: "Gold")
let mySelfDrivingCar = SelfDrivingCar()

mySelfDrivingCar.destination = "1 Hacker Way"

myCar.drive()
mySelfDrivingCar.drive()
print(mySelfDrivingCar.color)

