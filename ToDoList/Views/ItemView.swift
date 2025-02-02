//
//  ItemView.swift
//  ToDoList
//
//  Created by Ainsley Quyen Nguyenho on 2025-02-01.
//

import SwiftUI

struct ItemView: View {
    
    @Bindable
var currentItem: ToDoItem
    
    var body: some View {
        Label(
            title: {
                Text(currentItem.title)
            }, icon: {
                Image(systemName: currentItem.done ? "checkmark.circle" : "circle")
                    // Tap to mark as finished
                    .onTapGesture {
                        currentItem.done.toggle()
                    }
            }
        )
    }
}

#Preview {
    
    List {
        ItemView(currentItem: firstItem)
        ItemView(currentItem: secondItem)
        ItemView(currentItem: thirdItem)
    }
}

