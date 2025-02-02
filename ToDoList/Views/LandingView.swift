//
//  ContentView.swift
//  ToDoList
//
//  Created by Ainsley Quyen Nguyenho on 2025-01-28.
//

import SwiftUI

struct LandingView: View {
    
    // MARK: stored properties
    
    // Item being added 
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Hello, world!")
        }
        .padding()
    }
}

#Preview {
    LandingView()
}
