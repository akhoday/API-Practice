//
//  ContentView.swift
//  API Practice
//
//  Created by Nathalie Borden (student LM) on 1/4/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        var mainList : [String] = ["Monday", "Tuesday", "Wednesday", "Thursday", "Friday"]
        
        NavigationView {
            List(mainList.indices) {something in
                
                
                Text(mainList[something]).frame(minWidth: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/, idealWidth: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, minHeight: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/, idealHeight: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, maxHeight: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/).border(Color.red, width: 4)
            
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
