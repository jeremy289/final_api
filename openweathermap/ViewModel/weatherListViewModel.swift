//
//  weatherListViewModel.swift
//  Hw5
//
//  Created by User20 on 2020/6/10.
//  Copyright © 2020 stryyhhhhhh. All rights reserved.
//

import Foundation

class weatherListViewModel: ObservableObject {
    @Published var lists = [detail]()
    //@Published var weathers = [weather]()
    func fetchWeathers() {
    let urlStr = "http://api.openweathermap.org/data/2.5/group?id=1665148,1668338,1678228,1667905,1668352,1668399,1673820&units=metric&lang=zh_tw&appid=bdb56bc1ef58c981e76bd0a4d7c6dbd1"
        if let url = URL(string: urlStr){
            URLSession.shared.dataTask(with: url){(data,response,error) in
                let decoder=JSONDecoder()
                if let data = data,let weatherData = try?decoder.decode(weatherData.self,from: data){
                    DispatchQueue.main.async {
                                            self.lists = weatherData.list

                    }
                    
                }
            }.resume()
        }
    }
}

