//
//  ContentView.swift
//  Checklist
//
//  Created by Bridget Wilson on 15/4/2023.
//

import SwiftUI

struct ContentView: View {
    @Binding var model: MyLists
        
    var body: some View {
        NavigationView {
            ListView(list: $model)
            
        }

    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
       ContentView(model: .constant(MyLists(title: "List", items: [])))
//       ContentView()
    }
}
