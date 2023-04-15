//
//  DataModel.swift
//  Checklist
//
//  Created by Bridget Wilson on 15/4/2023.
//

import Foundation

struct ListNode: Hashable {
    var title: String
    var children: [ListNode]

    var totalChildren:Int {
        children.reduce(0){ $0 + $1.totalChildren + 1}
    }
    mutating func addNewChild() {
        let childTitle = self.title + " " + String(children.count)
        children.append(ListNode(title: childTitle, children: []))
    }
    
}
