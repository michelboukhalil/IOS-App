//
//  Category.swift
//  Todoey
//
//  Created by Michel Bou khalil on 1/22/19.
//  Copyright © 2019 Michel Bou khalil. All rights reserved.
//

import Foundation
import RealmSwift

class Category : Object{
    @objc dynamic var name : String = ""
    @objc dynamic var colour : String = ""
    let items = List<Item>()
}
