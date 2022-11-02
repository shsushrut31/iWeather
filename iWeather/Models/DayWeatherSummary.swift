//
//  DayWeatherSummary.swift
//  iWeather
//
//  Created by Sushrut Shastri on 2022-11-01.
//

import Foundation

struct DayWeatherSummary {
    let condition: SkyCondition
    let highTemp: Int
    let lowTemp: Int
    let date: Date
    var percentage: Int = 0
    var formattedDate: String {
        return date.formatted(date: .abbreviated, time: .omitted)
    }
    
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
    
    static let example = DayWeatherSummary(condition: SkyCondition.Clear, highTemp: 2, lowTemp: -4, date: Date())
    
}
