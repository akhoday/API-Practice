//
//  SummaryListView.swift
//  API Practice
//
//  Created by Nathalie Borden (student LM) on 1/24/22.
//

import SwiftUI

struct SummaryListView: View {
    
    /*@StateObject var fetchData = FetchData()
    var daily : Daily
 */
    var title : String = "SummaryListView"
    var n : Int
   
    
    var body: some View {
        
    
        //lists information for viewer
        VStack {
            Text(title + ": " + String(n))
            Text("Help")
            /*
            Text("Date: " + String(date!))
                .font(.title)
            Text("Temp:" + String(daytemp!))
            Text("Dew Point: " + String(dewpoint!))
            HStack{
                Text("Low: " + String(low!))
                Text("High: " + String(high!))
                
            }
            */

        }
        .padding(0.0)
        .frame(width: 250, height: 140)
        .border(Color.red, width: /*@START_MENU_TOKEN@*/8/*@END_MENU_TOKEN@*/) .foregroundColor(.red)
   
    }
}

/*struct SummaryListView_Previews: PreviewProvider {
    static var previews: some View {
        SummaryListView(daily: Daily())

    }
}
*/
