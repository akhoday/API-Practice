//
//  WebView.swift
//  API Practice
//
//  Created by Alveena Khoday (student LM) on 1/19/22.
//

import SwiftUI
import WebKit

struct SwiftUIWebView : UIViewRepresentable{
    
    let icon: URL?
    
    func makeUIView(context: Context) -> WKWebView {
        var prefs = WKWebpagePreferences()
        prefs.allowsContentJavaScript = true
        let config = WKWebViewConfiguration()
        config.defaultWebpagePreferences = prefs
        return WKWebView(frame: .zero, configuration: config)
    }
    
    func updateUIView(_ uiView: WKWebView, context: Context) {
        guard let url = icon else{
            return
        }
        let request = URLRequest(url: url)
        uiView.load(request)
    }
    
    
}

