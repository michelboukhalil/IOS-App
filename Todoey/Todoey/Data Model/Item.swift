//
//  Item.swift
//  Todoey
//
//  Created by Michel Bou khalil on 1/22/19.
//  Copyright © 2019 Michel Bou khalil. All rights reserved.
//

import Foundation
import RealmSwift

class Item: Object{
    @objc dynamic var title : String = ""
    @objc dynamic var done : Bool = false
    @objc dynamic var dateCreated: Date?
    var parentCategory = LinkingObjects(fromType: Category.self, property: "items")
}
