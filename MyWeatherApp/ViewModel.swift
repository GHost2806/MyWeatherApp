//
//  ViewModel.swift
//  MyWeatherApp
//
//  Created by Macbook Air on 15/09/23.
//

import Foundation
class WeatherViewModel: ObservableObject {
    @Published var title: String = "-"
    @Published var description: String = "-"
    @Published var temp: String = "-"
    @Published var timezone: String = "-"
    
    init() {
        fetchWeather()
    }
    
    func fetchWeather() {
        guard let url = URL(string: "https://api.openweathermap.org/data/3.0/onecall?lat=41.18&lon=69.15&exclude=current&appid=dd2598cdcdaec1f076043672160760ed") else {
            return
        }
        let task = URLSession.shared.dataTask(with: url) {(data, _, error in
                                                           guard let data == data, error == nil else {
            return
        }
        }
                                                           task.resume()
    }
    
}
