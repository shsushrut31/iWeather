//
//  ContentView.swift
//  iWeather
//
//  Created by Sushrut Shastri on 2022-11-01.
//

import SwiftUI

struct HomeView: View {
    
    let hourlyTemperature = [HourlyWeather(time: "Now", temperature: 5),HourlyWeather(time: "1PM", temperature: 5),HourlyWeather(time: "2PM", temperature: 4),HourlyWeather(time: "3PM", temperature: 2),HourlyWeather(time: "4PM", temperature: 0),HourlyWeather(time: "5PM", temperature: -2),HourlyWeather(time: "6PM", temperature: -2),HourlyWeather(time: "7PM", temperature: -4),HourlyWeather(time: "8PM", temperature: -6),HourlyWeather(time: "9PM", temperature: -6),HourlyWeather(time: "10PM", temperature: -7)]
    
    var body: some View {
        VStack {
            CurrentTemperatureView(currentWeather: CurrentWeather.example)
            
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
        }
        .padding()
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}



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
}
