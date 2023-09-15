//
//  Models.swift
//  MyWeatherApp
//
//  Created by Macbook Air on 15/09/23.
//

import Foundation

struct WeatheModel: Codable {
    let timezone: String
    let current: CurrentWeather
}

struct CurrentWeather: Codable {
    let temp: Float
    let weather: [WeatherInfo]
}

struct WeatherInfo: Codable {
    let main: String
    let description: String
}
