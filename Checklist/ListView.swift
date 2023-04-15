//
//  ListView.swift
//  Checklist
//
//  Created by Bridget Wilson on 15/4/2023.
//

import SwiftUI

struct ListView: View {
    
    @Binding var list:ListNode
    @State var tmpList:ListNode = ListNode(title: "", children: [])
    
    var body: some View {
        VStack{
            List{
                ForEach($tmpList.children,id:\.self) { $list in
                    NavigationLink(destination: ListView(list: $list)) {
                        Text("\(list.title) (\(list.totalChildren))" )
                    }
                }
            }.frame(height:300)
            Button("Add new list item"){
                tmpList.addNewChild()
            }
            Spacer()
        }.navigationTitle(list.title)
      
            .onAppear{
                tmpList = list
                print(list.title + " appear")
            }.onDisappear{
                list = tmpList
                print(list.title + " disappear")
            }
    }
}