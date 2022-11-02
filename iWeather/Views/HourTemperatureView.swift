//
//  HourTemperatureView.swift
//  iWeather
//
//  Created by Sushrut Shastri on 2022-11-01.
//

import SwiftUI

struct HourTemperatureView: View {
    let hourlyWeather: HourlyWeather
    var body: some View {
        VStack {
            Text(hourlyWeather.time)
                .font(.title2)
                .fontWeight(.semibold)
                .modifier(CustomTextColor())
            Image(systemName: hourlyWeather.weatherImageName)
                .font(.title)
                .padding(1)
                .frame(height: 50)
                .modifier(ColoredWeatherIcon(condition: hourlyWeather.condition))
            Text("\(hourlyWeather.temperature)º")
                .font(.title)
                .fontWeight(.medium)
                .offset(x: 2)
                .modifier(CustomTextColor())
        }.padding(1)
    }
}

struct HourTemperatureView_Previews: PreviewProvider {
    static var previews: some View {
        HourTemperatureView(hourlyWeather: HourlyWeather.example)
    }
}
