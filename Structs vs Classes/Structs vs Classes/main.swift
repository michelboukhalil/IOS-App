//
//  main.swift
//  Strucks vs Classes
//
//  Created by Michel Bou khalil on 2/9/19.
//  Copyright © 2019 Michel Bou khalil. All rights reserved.
//

import Foundation

var hero = ClassHero(name: "Iron Man", universe: "Marvel")

var anotherMarvelHero = hero

anotherMarvelHero.name = "The Hulk"

var avengers = [hero,anotherMarvelHero]

avengers[0].name = "Thor"

print("hero name = \(hero.name)")
print("anotherMarvelHero name = \(anotherMarvelHero.name)")
print("first avenger name = \(avengers[0].name)")

let heros = ClassHero(name: "Iron Man", universe: "Marvel")

heros.name = "Cat Women"

let structHero = StructHero(name:"Iron Man" , universe:"Marvel" )

//Impossible
//structHero.name = "fsa"

print(structHero.reverseName())

