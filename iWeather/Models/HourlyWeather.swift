//
//  HourlyWeather.swift
//  iWeather
//
//  Created by Sushrut Shastri on 2022-11-01.
//

import Foundation

struct HourlyWeather {
    let time: String
    let temperature: Int
    let condition: SkyCondition
    
    var weatherImageName: String {
        switch condition {
        case .Snowy:
            return "snowflake"//"cloud.snow.fill"
        case .Sunny:
            return "sun.max.fill"
        case .Clear:
            return "sun.and.horizon.fill"
        case .Cloudy:
            return "cloud.fill"
        case .Rainy:
            return "cloud.rain.fill"
        }
    }
    
    static let example = HourlyWeather(time: "Now", temperature: 4, condition: .Clear)
}
