//
//  ContentView.swift
//  API Practice
//
//  Created by Nathalie Borden (student LM) on 1/4/22.
//

import SwiftUI

struct ContentView: View {
 
        @StateObject var fetchData = FetchData()
         
         var body: some View {
             List(fetchData.responses.currents){ current in
                 NavigationLink(
                     destination: SwiftUIWebView(url: article.url),
                     label: {
                        HStack{
                            KFImage(article.urlToImage)
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/)
                            
                            Text(current.temp!)
                             }
                 })
             }
         }
        
        
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
