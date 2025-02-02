//
//  ContentView.swift
//  ToDoList
//
//  Created by Ainsley Quyen Nguyenho on 2025-01-28.
//
import SwiftUI

struct LandingView: View {
    
    // MARK: Stored properties
    
    // Item being added
    @State var newItemDescription: String = ""
    
    // Search text
    @State var searchText = ""
    
    // MARK: Computed properties
    var body: some View {
        NavigationView {
            
            VStack {
                
                List {
                   
                    Text("Study for chemistry text")
                    Text("Finish comp sci assignment")
                    Text("Go for a run around campus")
                }
                .searchable(text: $searchText)
            }
            .navigationTitle("To Do")
        }
        .padding()
    }
}

#Preview {
    LandingView()
}
