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
    
    // List of items
    @State var todos: [ToDoItem] = exampleItems
    
    
    // MARK: Computed properties
    var body: some View {
        NavigationView {
            VStack {
                List(todos) { todo in
                    
                    ItemView(currentItem: todo)
                    // delete an item
                        .swipeActions {
                            Button(
                                "Delete",
                                role: .destructive,
                                action: {
                                    delete(todo)
                                }
                            )
                        }
                }
                .searchable(text: $searchText)
                
                HStack {
                    TextField("Add new item", text: $newItemDescription)
                    
                    Button("ADD") {
                        // add new item
                        createToDo(withTitle: newItemDescription)
                    }
                    .font(.caption)
                    .disabled(newItemDescription.isEmpty == true)
                }
                .padding(20)
            }
            .navigationTitle("To Do")
            .padding()
        }
    }
    
    // MARK: functions
    func createToDo(withTitle title: String) {
        
        // Create the new items
        let todo = ToDoItem(
            title: title,
            done: false
            )
        
        // Append to the array
        todos.append(todo)
    }
    
    func delete(_ todo: ToDoItem) {
        
        // Remove the provided to-do item from the array
        todos.removeAll { currentItem in
            currentItem.id == todo.id
        }
        
    }
}

#Preview {
    LandingView()
}
