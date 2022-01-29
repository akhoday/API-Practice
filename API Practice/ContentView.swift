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
            
            var nums : [Int] = [3, 1, 2, 5, 4]
            //vstack that includes the heading of the app and then then information from the list, linking the navigation view
            //spacing is 0 so everything is comfortably close together
            VStack(spacing: 0){
                
                //gloves heading image
                Image("weatherHeading").resizable().aspectRatio(contentMode: .fit)
                Text("JSON: " + JSONString)
                /*Text("Hello, World!")
                WeatherInfoView()
                /*Text("Hello, Summary!")
                SummaryListView()
 */
                Text("Goodbye, World!")
                */
                
                NavigationView {
                    
                    List(nums.indices) {num in
                        NavigationLink (destination: WeatherInfoView(n: num),
                        label: {
                            SummaryListView(n: num)
                        })
                    }
                   
                }
                //list of daily weather
                //basic information: low, high, date,
                //dew point, sunrise
                /*NavigationView{
                    List(fetchData.responses.daily) {day in
                        
                        //navigationLink connects to other views
                        NavigationLink (destination:
                                            WeatherInfoView(daily: day, weather: day.weather),
                                        label: {
                            SummaryListView(daily: day)
                    })
                        
                    }
                }
 */
            }
            
         }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

