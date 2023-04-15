//
//  ListDetailView.swift
//  Checklist
//
//  Created by Bridget Wilson on 15/4/2023.
//

import SwiftUI


struct ListDetailView: View {
    @Binding var model: MyListItem
    @State var tmpList: MyListItem = MyListItem(title: "", isChecked: false)
    var body: some View {
        NavigationView {
            List {
                Text("List Detail View")

            }
            
//            ListDetailView(list: $model)
        }
    }
}
