//
//  StructExample.swift
//  Strucks vs Classes
//
//  Created by Michel Bou khalil on 2/9/19.
//  Copyright © 2019 Michel Bou khalil. All rights reserved.
//

import Foundation

struct StructHero  {
    
    var name: String
    var universe: String
    
    func reverseName()-> String {
        return String(self.name.reversed())
    }
    
    mutating func reverseName2(){
        self.name = String(self.name.reversed())
    }
}


