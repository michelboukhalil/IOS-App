//
//  AppDelegate.swift
//  Todoey
//
//  Created by Michel Bou khalil on 12/4/18.
//  Copyright © 2018 Michel Bou khalil. All rights reserved.
//

import UIKit
import RealmSwift

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
        print(Realm.Configuration.defaultConfiguration.fileURL!)
        
        
        do{
           _ = try Realm()
        }catch{
            print("Error initialising new Realm \(error)")
        }
        
        return true
    }

    
   



}

