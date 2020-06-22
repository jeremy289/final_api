//
//  ApiDetail.swift
//  Hw5
//
//  Created by User24 on 2020/6/15.
//  Copyright © 2020 stryyhhhhhh. All rights reserved.
//

import SwiftUI
import UIKit


struct ApiDetail: View {
    var wdata: location
    //var wdata2 : current
    //@State private var isPresented = false
    @State private var show = false

    var body: some View {
        ZStack {
            VStack {
                 if show{
                    Text(wdata.name)
                    Text("\(wdata.lat, specifier: "%.1f")")
                    Text("\(wdata.lon, specifier: "%.1f")")
                    Text(wdata.tz_id)
                    Text(wdata.localtime)
                }
                //Text( wdata2.condition.text)
                //Text("\(wdata2.temp_c)")
                
            }
            .font(.largeTitle)
            .foregroundColor(Color.orange)
            .animation(.easeInOut(duration:3))
            .onAppear{
                self.show = true
            }
        }
        
           
    }
}

/*
struct ApiDetail_Previews: PreviewProvider {
    static var previews: some View {
        ApiDetail()
    }
}*/
