//
//  SummaryListView.swift
//  API Practice
//
//  Created by Nathalie Borden (student LM) on 1/24/22.
//

import SwiftUI

struct SummaryListView: View {
    
    @StateObject var fetchData = FetchData()
    
    var body: some View {
        
        let date = fetchData.responses.daily
        var description = "really cold"
        var humidity = 0.5
        var low = 0.0
        var high = 100.0
        
        VStack {
            Text(String(date.capacity))
                .font(.title)
            Text(description)
            Text("Humidity: " + String(humidity))
            HStack{
                Text("Low: " + String(low))
                Text("High: " + String(high))
            }

        }
        .padding(0.0)
        .frame(width: 250, height: 140)
        .border(/*@START_MENU_TOKEN@*/Color.blue/*@END_MENU_TOKEN@*/, width: /*@START_MENU_TOKEN@*/8/*@END_MENU_TOKEN@*/) .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
   
    }
}

struct SummaryListView_Previews: PreviewProvider {
    static var previews: some View {
        SummaryListView()
    }
}
