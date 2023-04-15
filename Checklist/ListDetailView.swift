//
//  ListDetailView.swift
//  Checklist
//
//  Created by Bridget Wilson on 15/4/2023.
//

import SwiftUI


struct ListDetailView: View {
    @Binding var model: MyLists
    @State var tmpList:MyLists = MyLists(title: "", items: [])
    var body: some View {
        NavigationView {
            List {
                Text("List Detail View")
//                ForEach (model, id\.self) { model in
//
//                }
            }
            
//            ListDetailView(list: $model)
        }
    }
}
