//
//  WeatherFeed.swift
//  API Practice
//
//  Created by Alveena Khoday (student LM) on 1/18/22.
//

import Foundation

//takes data from the json current array, has current data of weather
struct Current: Codeable{
    var uvi : Double?
    var humidity : Int?
    var temp : Double?
    var feels_like : Double?
    var weather: [Current]?
    
    
}
