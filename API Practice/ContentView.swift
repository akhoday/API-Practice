//
//  ContentView.swift
//  API Practice
//
//  Created by Nathalie Borden (student LM) on 1/4/22.
//

import SwiftUI

struct ContentView: View {
    
    @StateObject var fetchData = FetchData()
    @State var JSONString : String = "content blank"
         var body: some View {
            
            //vstack that includes the heading of the app and then then information from the list, linking the navigation view
            //spacing is 0 so everything is comfortably close together
            VStack(spacing: 0){
                
                //gloves heading image- main branding of the app
                Image("weatherHeading").resizable().aspectRatio(contentMode: .fit)
                
                //list of daily weather
                //basic information: low, high, date,
                //dew point, sunrise
                NavigationView{
                    List(fetchData.responses.daily) {day in
                        
                        //navigationLink connects to other views
                        NavigationLink (destination:
                                            //goes to WeatherInfoView for more details on the type of weather
                                            WeatherInfoView(daily: day, weather: day.weather),
                                        label: {
                                            //displays initial information a person might want to know
                                            SummaryListView(daily: day)
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

