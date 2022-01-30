//
//  WeatherInfoView.swift
//  API Practice
//
//  Created by Nathalie Borden (student LM) on 1/24/22.
//

import SwiftUI

struct WeatherInfoView: View {
    
    //reading in a set of daily data as a parameter
    var daily : Daily
    var weather : Weather
    
    
    var body: some View {
        
        //collect weather JSON data
        //date, sunrise, dew point, low, high for the given day
      let date = daily.dt
        let icon = weather.icon
        let description = weather.description
        let sunrise = daily.sunrise
        let sunset = daily.sunset
        let low = daily.min
        
        
        VStack {
            //display data in format that will be listed in NavigationView
           Text("Date:" + String(date!))
                .font(.title)
            Text(String(icon!)) //needs to be changed back to a URL with this string inserted
                                // into it so that it can display the image- it was this way before but has to be restored
            Text("Description: " + String(description!))
            HStack{
                Text("Sunrise: " + String(sunrise!))
                Text("Sunset: " + String(sunset!))
            }
            
            //we should add more, but these are the checks that interpret the weather information we're getting
            //we want one that tells you to bring an umbrella if it's raining,
            //and one that tells you to cancel plans if there's a high chance of heavy snow
            if (low! < 30.0) {
                Text("You need to wear gloves")
            }

        }
        .padding(0.0)
        .frame(width: 250, height: 140)
        .border(/*@START_MENU_TOKEN@*/Color.blue/*@END_MENU_TOKEN@*/, width: /*@START_MENU_TOKEN@*/8/*@END_MENU_TOKEN@*/) .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
   
    }
}

struct WeatherInfoView_Previews: PreviewProvider {
    static var previews: some View {
        WeatherInfoView(daily: Daily(), weather: Weather())
    }
}
