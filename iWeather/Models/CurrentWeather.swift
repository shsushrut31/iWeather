//
//  CurrentWeather.swift
//  iWeather
//
//  Created by Sushrut Shastri on 2022-11-01.
//

import Foundation

struct CurrentWeather {
    let location: String
    let temperature: Int
    let condition: SkyCondition
    let highTemp: Int
    let lowTemp: Int
    
    static let example = CurrentWeather(location: "Edmonton", temperature: 3, condition: .Sunny, highTemp: 5, lowTemp: -2)
    
}

enum SkyCondition: String {
    case Cloudy = "Cloudy"
    case Clear = "Clear"
    case Sunny = "Sunny"
    case Rainy = "Rainy"
    case Snowy = "Snowy"
}
