//
//  ContentView.swift
//  API Practice
//
//  Created by Nathalie Borden (student LM) on 1/4/22.
//

import SwiftUI

struct ContentView: View {
         var body: some View {
            var mainList : [String] = ["Monday","Tuesday","Wednesday", "Thursday", "Friday"]
            VStack(spacing: 0){
                Image("weatherHeading").resizable().aspectRatio(contentMode: .fit)
                NavigationView{
                    List(mainList.indices){ something in
                        NavigationLink (destination: WeatherInfoView(), label: {
                            Text(mainList[something]).frame(minWidth: 0, idealWidth: 100, maxWidth: .infinity, minHeight: 0, idealHeight: 100, maxHeight: .infinity, alignment: .center)
                                .border(Color.red, width: 4)
                    })
                        
                    }
                }
            }
            
         }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

