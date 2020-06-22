//
//  ApiRow.swift
//  Hw5
//
//  Created by User24 on 2020/6/15.
//  Copyright © 2020 stryyhhhhhh. All rights reserved.
//

import SwiftUI

struct ApiRow: View {
    var  wdata: location
    //var  wdata2: current
        var body: some View {
           VStack {
                
                Text(wdata.name)
                //Text(wdata2.last_updated)
               
           }
           
       }
}
/*
struct ApiRow_Previews: PreviewProvider {
    static var previews: some View {
        ApiRow()
    }
}
*/
