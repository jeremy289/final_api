//
//  ApiData.swift
//  Hw5
//
//  Created by User24 on 2020/6/15.
//  Copyright © 2020 stryyhhhhhh. All rights reserved.
//

import Foundation

struct ApiData:Codable{
    let location: location
    let current : current
}
struct location:Codable,Identifiable{
    var id : String{tz_id}
    let name:String
    let lat:Float
    let lon:Float
    var tz_id:String
    var localtime:String
}
struct current :Codable{
    //var id=UUID()
    let temp_c:Int
    let condition : condition
    let last_updated:String
}
struct condition:Codable{
    let text :String
}

