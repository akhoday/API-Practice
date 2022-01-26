//
//  ContentView.swift
//  API Practice
//
//  Created by Nathalie Borden (student LM) on 1/4/22.
//

import SwiftUI

struct ContentView: View {
    
    @StateObject var fetchData = FetchData()
    
         var body: some View {
            
            //temporary list of dates
            
            //vstack that includes the heading of the app and then then information from the list, linking the navigation view
            //spacing is 0 so everything is comfortably close together
            VStack(spacing: 0){
                
                //gloves heading image
                Image("weatherHeading").resizable().aspectRatio(contentMode: .fit)
                
                //list of daily weather
                NavigationView{
                    List(fetchData.responses.daily) {day in
                        NavigationLink (destination: WeatherInfoView(), label: {
                            Text(String(day))
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

