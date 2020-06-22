//
//  weatherData.swift
//  Hw5
//
//  Created by User20 on 2020/6/10.
//  Copyright © 2020 stryyhhhhhh. All rights reserved.
//

import Foundation

struct weatherData : Codable{
    let cnt:Int 
    let list:[detail]
}

struct detail:Codable,Identifiable {
    let id:Int
    let name :String
    let weather:[weather]
    let main:main
}
struct weather:Codable{
    var main: String
    var description: String
    
}
struct main:Codable{
    var temp_min:Float
    var temp_max : Float
    
}
