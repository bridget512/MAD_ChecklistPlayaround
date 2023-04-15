//
//  ListView.swift
//  Checklist
//
//  Created by Bridget Wilson on 15/4/2023.
//

import SwiftUI

struct ListView: View {
    
    @Binding var list: MyLists
    @State var tmpList: MyLists = MyLists(title: "", items: [])
    
    var body: some View {
        VStack{
            List{
                ForEach($tmpList.items,id:\.self) { $list in
                    
                    NavigationLink(destination: ListView(list: $list)) {
//                        Text("\(list.title) (\(list.totalChildren))" )
                        Text(list.title)
                    }
                }
            }
//            .frame(height:300)
            Spacer()
            Button("Add new list item"){ tmpList.addNewChild() }
            
        }
        .navigationTitle(list.title)
//            .onAppear{
//                tmpList = list
//                print(list.title + " appear")
//            }.onDisappear{
//                list = tmpList
//                print(list.title + " disappear")
//            }
    }
}
