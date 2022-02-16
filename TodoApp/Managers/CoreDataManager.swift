//
//  CoreDataManager.swift
//  TodoApp
//
//  Created by Anshumali Karna on 16/02/22.
//

import Foundation
import CoreData

class CoreDataManager {
    let persistantContainer: NSPersistentContainer
    static let shared: CoreDataManager = CoreDataManager()
    
    private init(){
        persistantContainer = NSPersistentContainer(name: "TodoModel")
        persistantContainer.loadPersistentStores { description, error in
            if let error = error {
                fatalError("Unable to initialize Core Data \(error)")
            }
        }
    }
}
