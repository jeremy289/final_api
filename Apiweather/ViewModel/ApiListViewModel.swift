//
//  ApiListViewModel.swift
//  Hw5
//
//  Created by User24 on 2020/6/15.
//  Copyright © 2020 stryyhhhhhh. All rights reserved.
//

import Foundation

class ApiListViewModel: ObservableObject {
    @Published var locations = [location]()
    //@Published var currents = [current]()
    func fetchApi() {
    let urlStr = "http://api.weatherapi.com/v1/current.json?key=043454d6cf3d47a18cc64323200806&q=Taiwan"
        if let url = URL(string: urlStr){
            URLSession.shared.dataTask(with: url){(data,response,error) in
                let decoder=JSONDecoder()
                if let data = data,let ApiData = try?decoder.decode(ApiData.self,from: data){
                    DispatchQueue.main.async {
                        self.locations = [ApiData.location]
                        print(ApiData)
                        //self.currents = [ApiData.current].currents
                    }
                    
                }
            }.resume()
        }
    }
}

