//
//  ChecklistApp.swift
//  Checklist
//
//  Created by Bridget Wilson on 15/4/2023.
//

import SwiftUI

@main
struct ChecklistApp: App {
    @State var model = ListNode(title: "List",children: [])
    
    var body: some Scene {
        WindowGroup {
            ContentView(model: $model)
        }
    }
}
