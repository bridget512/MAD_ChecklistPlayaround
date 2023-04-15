//
//  DataModel.swift
//  Checklist
//
//  Created by Bridget Wilson on 15/4/2023.
//

import Foundation

struct MyLists: Hashable {
    let id = UUID()
    var title: String
    var items: [MyLists]

    var totalChildren:Int {
        items.reduce(0){ $0 + $1.totalChildren + 1}
    }
    
    mutating func addNewChild() {
        let listTitle = self.title + " " + String(items.count)
        items.append(MyLists(title: listTitle, items: []))
    }
    
}

struct MyListItem: Hashable {
    let id = UUID()
    var title: String
    var items: [MyListItem]
    var isChecked: Bool = false
    
    mutating func addNewItem() {
        let listItemTitle = self.title
        items.append(MyListItem(title: listItemTitle, items: [], isChecked: false))
    }
}


