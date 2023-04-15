//
//  ListDetailView.swift
//  Checklist
//
//  Created by Bridget Wilson on 15/4/2023.
//

import SwiftUI


struct ListDetailView: View {
    @Binding var listItem: MyListItem
    @State var tmpListItem: MyListItem = MyListItem(title: "",  items: [], isChecked: false)
    
    var body: some View {
        NavigationView {
            List {
                Text("List Detail View")

            }
            
//            ListDetailView(list: $model)
        }
    }
}


//struct ListDetailView_Previews: PreviewProvider {
//    static var previews: some View {
//        ContentView(model: .constant(MyListItem(title: "List", items: [], isChecked: false)))
////       ContentView()
//    }
//}
