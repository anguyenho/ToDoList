//
//  ToDoItem.swift
//  ToDoList
//
//  Created by Ainsley Quyen Nguyenho on 2025-02-01.
//

import SwiftData

@Model
class ToDoItem: Identifiable {
    var title: String
    var done: Bool
    
    init(title: String, done: Bool) {
        self.title = title
        self.done = done
    }
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
