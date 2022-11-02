//
//  TenDayWeatherListView.swift
//  iWeather
//
//  Created by Sushrut Shastri on 2022-11-01.
//

import SwiftUI

struct TenDayWeatherListView: View {
    let tenDayWeather = [DayWeatherSummary(condition: .Rainy, highTemp: 5, lowTemp: 3, date: Date()),DayWeatherSummary(condition: .Snowy, highTemp: 2, lowTemp: -3, date: Date().advanced(by: 86400), percentage: 90),DayWeatherSummary(condition: .Snowy, highTemp: 1, lowTemp: -4, date: Date().advanced(by: 86400*2), percentage: 80),DayWeatherSummary(condition: .Clear, highTemp: 5, lowTemp: 3, date: Date().advanced(by: 86400*3)),DayWeatherSummary(condition: .Sunny, highTemp: 9, lowTemp: 2, date: Date().advanced(by: 86400*4)),DayWeatherSummary(condition: .Cloudy, highTemp: 7, lowTemp: 2, date: Date().advanced(by: 86400*5)),DayWeatherSummary(condition: .Cloudy, highTemp: 6, lowTemp: 4, date: Date().advanced(by: 86400*6)),DayWeatherSummary(condition: .Sunny, highTemp: 15, lowTemp: 5, date: Date().advanced(by: 86400*7)),DayWeatherSummary(condition: .Rainy, highTemp: 5, lowTemp: 3, date: Date().advanced(by: 86400*8), percentage: 40),DayWeatherSummary(condition: .Cloudy, highTemp: 11, lowTemp: 4, date: Date().advanced(by: 86400*9))]
    var body: some View {
        ScrollView(showsIndicators: false) {
            VStack(alignment: .leading) {
                
                ForEach(tenDayWeather, id: \.date) { weather in
                    
                    TenDayForecastRowView(dayWeatherSummary: weather)
                    
                    Divider()
                }
            }
            .padding()
        }
        .modifier(CustomBackgroundColor())
    }
}

struct TenDayWeatherListView_Previews: PreviewProvider {
    static var previews: some View {
        TenDayWeatherListView()
    }
}
