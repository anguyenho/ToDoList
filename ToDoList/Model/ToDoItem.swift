//
//  ToDoItem.swift
//  ToDoList
//
//  Created by Ainsley Quyen Nguyenho on 2025-02-01.
//

import Foundation

struct ToDoItem: Identifiable {
    let id = UUID()
    var title: String
    var done: Bool
}

let firstItem = ToDoItem(title: "Study for chemisry test", done: false)

let secondItem = ToDoItem(title: "Finish comp sci assignment", done: true)

let thirdItem = ToDoItem(title: "Go for a run around campus", done: false)

let exampleItems = [
    firstItem
    ,
    secondItem
    ,
    thirdItem
    ,
    
]
