//
//  DataParsing.swift
//  API Practice
//
//  Created by Alveena Khoday (student LM) on 1/10/22.
//

import Foundation

class FetchData : ObservableObject{
    @Published var responses : Response = Response()

    init(){
        // this code here decodes the JSON in a much simpliler process
        
        let url = URL(string: "https://api.openweathermap.org/data/2.5/onecall?lat=40.025&lon=-75.2829&exclude=alerts,minutely,hourly&units=imperial&appid=84093e05f55a9182393f95986f3b9d57")!
        
        URLSession.shared.dataTask(with: url) {(data, response, errors) in
            guard let data = data else {
                print("error")
                return 
            }
            guard let dataAsString = String(data: data, encoding: .utf8) else {return}
           
            let decoder = JSONDecoder()
           
            if let response = try? decoder.decode(Response.self, from: data) {
                DispatchQueue.main.async {
                    self.responses = response
                    }
                }
            else{
                print("can't decode JSON")
            }
            }.resume() 
    }
}
    
    struct Response: Codable{
        //sets up the structs
        var current : [Current] = [Current]()
        
    }

//takes data from the json current array, has current data of weather
struct Current: Codable{
    var uvi : Double?
    var humidity : Int?
    var temp : Double?
    var feels_like : Double?
    var weather: [Weather] = [Weather]()
    
    
}

//takes data from json weather array, has the specific types of weather
struct Weather: Codable{
    var main : String?
    var description : String?
    //not entirely sure what to put for the icon because it is an image i think
    var icon : String?
    //current.weather.icon
    //might want to change icon to URL
}


// add an extension to the article struct so that we can use an array of articles
// to dinamically create List.
extension Current: Identifiable{
   var id: Double {return temp!}
}

extension Weather: Identifiable{
    var id: String {return main!}
}
