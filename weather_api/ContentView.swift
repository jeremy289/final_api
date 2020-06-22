//
//  ContentView.swift
//  Hw5
//
//  Created by User20 on 2020/6/10.
//  Copyright © 2020 stryyhhhhhh. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            weatherList()
            .tabItem {
                Text("weather")
                Image(systemName: "icloud.fill")
            }
            ApiList()
            .tabItem {
                Text("Apilist")
                Image(systemName: "hurricane")
            }
            FontUIView()
            .tabItem {
                Text("Meteorological Website")
                Image(systemName: "globe")
            }
            Imagepicker()
            .tabItem {
                Text("Imagepicker")
                Image(systemName: "photo")
            }
            webView()
            .tabItem {
                Text("Video")
                Image(systemName: "play.circle.fill")
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
