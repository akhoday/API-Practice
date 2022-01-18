//
//  Weather.swift
//  API Practice
//
//  Created by Alveena Khoday (student LM) on 1/18/22.
//

import Foundation

//takes data from json weather array, has the specific types of weather
struct Weather: Codable{
    var id : Int?
    var main : String?
    var description : String? 
    //not entirely sure what to put for the icon because it is an image i think
    var icon : String?
    //current.weather.icon
    //might want to change icon to URL
