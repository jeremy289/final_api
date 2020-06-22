//
//  sdwebimage.swift
//  weather_api
//
//  Created by User20 on 2020/6/16.
//  Copyright © 2020 ntou. All rights reserved.
//

import SwiftUI
import SDWebImageSwiftUI
struct sdwebimage: View {
    var body: some View {
        WebImage(url: URL(string: "https://nokiatech.github.io/heif/content/images/ski_jump_1440x960.heic"))
          
           .onSuccess { image, data, cacheType in
               
           }
           .resizable()
           .placeholder(Image(systemName: "photo"))
           .placeholder {
               Rectangle().foregroundColor(.gray)
           }
           .indicator(.activity) // Activity Indicator
           .transition(.fade(duration: 0.5)) // Fade Transition with duration
           .scaledToFit()
           .frame(width: 300, height: 300, alignment: .center)
    }
}

struct sdwebimage_Previews: PreviewProvider {
    static var previews: some View {
        sdwebimage()
    }
}
