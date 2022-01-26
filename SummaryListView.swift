//
//  SummaryListView.swift
//  API Practice
//
//  Created by Nathalie Borden (student LM) on 1/24/22.
//

import SwiftUI

struct SummaryListView: View {
    
    @StateObject var fetchData = FetchData()
    var daily : Daily
    var body: some View {
        
        //taking values from the daily object provided
        let date = daily.dt
        let daytemp = daily.day
        let dewpoint = daily.dew_point
        let low = daily.min
        let high = daily.max
        
        //lists information for viewer
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
        .border(/*@START_MENU_TOKEN@*/Color.blue/*@END_MENU_TOKEN@*/, width: /*@START_MENU_TOKEN@*/8/*@END_MENU_TOKEN@*/) .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
   
    }
}

struct SummaryListView_Previews: PreviewProvider {
    static var previews: some View {
        SummaryListView(daily: Daily())
    }
}
