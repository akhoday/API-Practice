//
//  SummaryListView.swift
//  API Practice
//
//  Created by Nathalie Borden (student LM) on 1/24/22.
//

import SwiftUI

struct SummaryListView: View {
    
    //parameters: daily of type Daily
    //this is given a day from the list in the contentview and displays information specific to that day
    var daily : Daily
 
    var body: some View {
        
        //parsed JSON information
        let date = daily.dt
        let daytemp = daily.temp
        let dewpoint = daily.dew_point
        let low = daily.min
        let high = daily.max
        
        //lists basic weather information for viewer
        //to be seen on opening page
        VStack {
            Text("Date: " + String(date!))
                .font(.title)
            Text("Temp:" + String(daytemp!))
            Text("Dew Point: " + String(dewpoint!))
            HStack{
                Text("Low: " + String(low!))
                Text("High: " + String(high!))
                
            }
            

        }
        .padding(0.0)
        .frame(width: 250, height: 140)
        .border(Color.blue, width: /*@START_MENU_TOKEN@*/8/*@END_MENU_TOKEN@*/) .foregroundColor(.blue)
   
    }
}

struct SummaryListView_Previews: PreviewProvider {
    static var previews: some View {
        SummaryListView(daily: Daily())

    }
}

