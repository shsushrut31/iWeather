//
//  ContentView.swift
//  iWeather
//
//  Created by Sushrut Shastri on 2022-11-01.
//

import SwiftUI

struct HomeView: View {
    
    let hourlyTemperature = [HourlyWeather(time: "Now", temperature: 5),HourlyWeather(time: "1PM", temperature: 5),HourlyWeather(time: "2PM", temperature: 4),HourlyWeather(time: "3PM", temperature: 2),HourlyWeather(time: "4PM", temperature: 0),HourlyWeather(time: "5PM", temperature: -2),HourlyWeather(time: "6PM", temperature: -2),HourlyWeather(time: "7PM", temperature: -4),HourlyWeather(time: "8PM", temperature: -6),HourlyWeather(time: "9PM", temperature: -6),HourlyWeather(time: "10PM", temperature: -7)]
    let tenDayWeather = [DayWeatherSummary(condition: .Rainy, highTemp: 5, lowTemp: 3, date: Date()),DayWeatherSummary(condition: .Snowy, highTemp: 2, lowTemp: -3, date: Date().advanced(by: 86400), percentage: 90),DayWeatherSummary(condition: .Snowy, highTemp: 1, lowTemp: -4, date: Date().advanced(by: 86400*2), percentage: 80),DayWeatherSummary(condition: .Clear, highTemp: 5, lowTemp: 3, date: Date().advanced(by: 86400*3)),DayWeatherSummary(condition: .Sunny, highTemp: 9, lowTemp: 2, date: Date().advanced(by: 86400*4)),DayWeatherSummary(condition: .Cloudy, highTemp: 5, lowTemp: 3, date: Date().advanced(by: 86400*5)),DayWeatherSummary(condition: .Cloudy, highTemp: 5, lowTemp: 3, date: Date().advanced(by: 86400*6)),DayWeatherSummary(condition: .Sunny, highTemp: 5, lowTemp: 3, date: Date().advanced(by: 86400*7)),DayWeatherSummary(condition: .Rainy, highTemp: 5, lowTemp: 3, date: Date().advanced(by: 86400*8), percentage: 40),DayWeatherSummary(condition: .Cloudy, highTemp: 5, lowTemp: 3, date: Date().advanced(by: 86400*9))]
    
    var body: some View {
        
        VStack {
            CurrentTemperatureView(currentWeather: CurrentWeather.example)
            ScrollView(showsIndicators: false) {
                VStack(alignment: .leading) {
                    Text("Here goes the overall weather condition summary for today.")
                    Divider()
                    
                    ScrollView(.horizontal, showsIndicators: false) {
                        HStack {
                            ForEach(hourlyTemperature, id: \.time) { weather in
                                HourTemperatureView(hourlyWeather: weather)
                            }
                        }
                    }
                }
                .padding()
                .background(.ultraThinMaterial, in: RoundedRectangle(cornerRadius: 10))
                
                VStack(alignment: .leading) {
                    HStack {
                        Image(systemName: "calendar")
                        Text("10-DAY FORECAST")
                            .fontWeight(.medium)
                    }
                    
                    ForEach(tenDayWeather, id: \.date) { weather in
                        Divider()
                        
                        TenDayForecastRowView(dayWeatherSummary: weather)
                        
                    }
                }
                .padding()
                .background(.ultraThinMaterial, in: RoundedRectangle(cornerRadius: 10))
            }
        }
        .padding(EdgeInsets(top: 50, leading: 16, bottom: 10, trailing: 16))
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
