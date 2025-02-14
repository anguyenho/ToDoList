//
//  ToDoListApp.swift
//  ToDoList
//
//  Created by Ainsley Quyen Nguyenho on 2025-01-28.
//

import SwiftData
import SwiftUI

@main
struct ToDoListApp: App {
    var body: some Scene {
        WindowGroup {
            LandingView()
                .modelContainer(for: ToDoItem.self)
        }
    }
}
