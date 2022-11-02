//
//  ContentView.swift
//  iWeather
//
//  Created by Sushrut Shastri on 2022-11-01.
//

import SwiftUI

struct HomeView: View {
    
    let hourlyTemperature = [HourlyWeather(time: "Now", temperature: 5, condition: .Clear),HourlyWeather(time: "1PM", temperature: 5, condition: .Cloudy),HourlyWeather(time: "2PM", temperature: 4, condition: .Rainy),HourlyWeather(time: "3PM", temperature: 2, condition: .Clear),HourlyWeather(time: "4PM", temperature: 0, condition: .Sunny),HourlyWeather(time: "5PM", temperature: -2, condition: .Snowy),HourlyWeather(time: "6PM", temperature: -2, condition: .Snowy),HourlyWeather(time: "7PM", temperature: -4, condition: .Clear),HourlyWeather(time: "8PM", temperature: -6, condition: .Cloudy),HourlyWeather(time: "9PM", temperature: -6, condition: .Cloudy),HourlyWeather(time: "10PM", temperature: -7, condition: .Sunny)]
    let tenDayWeather = [DayWeatherSummary(condition: .Rainy, highTemp: 5, lowTemp: 3, date: Date()),DayWeatherSummary(condition: .Snowy, highTemp: 2, lowTemp: -3, date: Date().advanced(by: 86400), percentage: 90),DayWeatherSummary(condition: .Snowy, highTemp: 1, lowTemp: -4, date: Date().advanced(by: 86400*2), percentage: 80),DayWeatherSummary(condition: .Clear, highTemp: 5, lowTemp: 3, date: Date().advanced(by: 86400*3)),DayWeatherSummary(condition: .Sunny, highTemp: 9, lowTemp: 2, date: Date().advanced(by: 86400*4)),DayWeatherSummary(condition: .Cloudy, highTemp: 7, lowTemp: 2, date: Date().advanced(by: 86400*5)),DayWeatherSummary(condition: .Cloudy, highTemp: 6, lowTemp: 4, date: Date().advanced(by: 86400*6)),DayWeatherSummary(condition: .Sunny, highTemp: 15, lowTemp: 5, date: Date().advanced(by: 86400*7)),DayWeatherSummary(condition: .Rainy, highTemp: 5, lowTemp: 3, date: Date().advanced(by: 86400*8), percentage: 40),DayWeatherSummary(condition: .Cloudy, highTemp: 11, lowTemp: 4, date: Date().advanced(by: 86400*9))]
    
    var body: some View {
        
        VStack {
            
            ScrollView(showsIndicators: false) {
                CurrentTemperatureView(currentWeather: CurrentWeather.example)
                
                VStack(alignment: .leading) {
                    Text("Here goes the overall weather condition summary for today.")
                        .modifier(CustomTextColor())
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
                .modifier(CustomGrayColor())
            }
        }
        .padding(EdgeInsets(top: 50, leading: 16, bottom: 10, trailing: 16))
        .modifier(CustomBackgroundColor())
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
