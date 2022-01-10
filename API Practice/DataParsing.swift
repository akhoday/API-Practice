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
        
        let url = URL(string: "https://api.openweathermap.org/data/2.5/onecall?lat={lat}&lon={lon}&exclude={part}&appid={84093e05f55a9182393f95986f3b9d57}")!
        
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
        var totalResults : Int = 0
        var forecasts : [Forecast] = [Forecast]()
    }

    struct Forecast : Codable{
        var title : String?
        var url : URL?
        var urlToImage : URL?
            
            
    }


// add an extension to the article struct so that we can use an array of articles
// to dinamically create List.
extension Forecast: Identifiable{
   var id: String {return title!}
}
