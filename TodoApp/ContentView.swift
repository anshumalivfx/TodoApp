//
//  ContentView.swift
//  TodoApp
//
//  Created by Anshumali Karna on 16/02/22.
//

import SwiftUI


enum Priority: String, Identifiable, CaseIterable

struct ContentView: View {
    
    @State private var title:String = ""
    
    var body: some View {
        NavigationView {
            VStack{
                TextField("Enter Title", text:$title)
            }
            .navigationTitle("All Task")
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
