//
//  weatherDetail.swift
//  Hw5
//
//  Created by User20 on 2020/6/10.
//  Copyright © 2020 stryyhhhhhh. All rights reserved.
//

import SwiftUI

struct weatherDetail: View {
    var Details: detail
    @State private var scale: CGFloat = 1
    @State private var newScale: CGFloat = 1
    var body: some View {
        ZStack {
            VStack {
                Image("\(Details.name)")
                    .resizable()
                    .scaledToFit()
                    .transition(.scale)
                    .scaleEffect(scale)
                    .gesture(MagnificationGesture()
                           .onChanged { value in
                           self.scale = self.newScale * value.magnitude
                           }.onEnded { value in
                           self.newScale = self.scale
                               
                       })
                Text(Details.name)
                    
                Text(Details.weather[0].description)
                Text("\(Details.main.temp_max, specifier: "%.1f")")
                Text("\(Details.main.temp_min, specifier: "%.1f")")
            }
            .font(.largeTitle)
            .foregroundColor(Color.blue)
        }
        
    }
}

/*struct weatherDetail_Previews: PreviewProvider {
    static var previews: some View {
        weatherDetail()
    }
}*/
