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
            Image(systemName: "cloud.fill")
                .font(.title)
                .padding(1)
            Text("\(hourlyWeather.temperature)º")
                .font(.title)
                .fontWeight(.medium)
                .offset(x: 2)
        }.padding(1)
    }
}

struct HourTemperatureView_Previews: PreviewProvider {
    static var previews: some View {
        HourTemperatureView(hourlyWeather: HourlyWeather.init(time: "Now", temperature: 5))
    }
}
