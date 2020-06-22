//
//  webView.swift
//  weather_api
//
//  Created by User17 on 2020/6/17.
//  Copyright © 2020 ntou. All rights reserved.
//

import SwiftUI
import WebKit
struct WebView: UIViewRepresentable {
   
    
    let urlString: String
    
    func makeUIView(context: Context) -> WKWebView {
        let webView = WKWebView()
        return webView
    }
    
    
    func updateUIView(_ uiView: WKWebView, context: Context) {
        if let url = URL(string: urlString) {
            let request = URLRequest(url: url)
            uiView.load(request)
        }
    }
    
    typealias UIViewType = WKWebView
}
struct webView: View {
    @State private var urlString = "https://www.youtube.com/watch?v=Ua9DKclFKLA"
    var body: some View {
        VStack {
            WebView(urlString: urlString)
        }
    }
}

struct webView_Previews: PreviewProvider {
    static var previews: some View {
        webView()
    }
}
