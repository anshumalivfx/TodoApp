//
//  ContentView.swift
//  TodoApp
//
//  Created by Anshumali Karna on 16/02/22.
//

import SwiftUI


enum Priority: String, Identifiable, CaseIterable {
    var id:UUID {
        return UUID()
    }
    
    case low = "Low"
    case medium = "Medium"
    case high = "High"
    
}

extension Priority {
    var title:String {
        switch self{
        case .low:
            return "Low"
        case .medium:
            return "Medium"
        case .high:
            return "High"
        }
    }
}

struct ContentView: View {
    
    @State private var title:String = ""
    @State private var selectedPriority: Priority = .medium
    
    var body: some View {
        NavigationView {
            VStack{
                TextField("Enter Title", text:$title)
                    .textFieldStyle(.roundedBorder)
                Picker("Priority", selection: $selectedPriority) {
                    ForEach(Priority.allCases) { p in
                        Text(p.title).tag(p)
                    }
                }.pickerStyle(.segmented)
                
                Button("Save"){
                    
                }
                .padding(10)
                .frame(maxWidth: .infinity)
                .background(Color.blue)
                .foregroundColor(.white)
                .clipShape(RoundedRectangle(cornerRadius: 10, style: .continuous))
                
                Spacer()
            }
            .padding()
            .navigationTitle("All Tasks")
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
