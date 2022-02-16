//
//  TodoAppApp.swift
//  TodoApp
//
//  Created by Anshumali Karna on 16/02/22.
//

import SwiftUI

@main
struct TodoAppApp: App {
    
    let persistantContainer = CoreDataManager.shared.persistantContainer
    
    var body: some Scene {
        WindowGroup {
            ContentView().environment(\.managedObjectContext, persistantContainer.viewContext)
        }
    }
}
