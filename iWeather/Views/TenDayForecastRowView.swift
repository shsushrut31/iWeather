//
//  TenDayForecastRowView.swift
//  iWeather
//
//  Created by Sushrut Shastri on 2022-11-01.
//

import SwiftUI

struct TenDayForecastRowView: View {
    let dayWeatherSummary: DayWeatherSummary
    var body: some View {
        HStack {
            VStack(alignment: .leading) {
                Text(dayWeatherSummary.formattedDate)
                    .font(.headline)
                    .fontWeight(.semibold)
                Text(dayWeatherSummary.condition.rawValue)
                    .font(.callout)
                    .fontWeight(.medium)
            }
            
            Spacer()
            
            HStack {
                if dayWeatherSummary.percentage != 0 {
                    Text("\(dayWeatherSummary.percentage)%")
                        .foregroundColor(.cyan)
                        .fontWeight(.semibold)
                        .font(.caption)
                }
                Image(systemName: dayWeatherSummary.weatherImageName)
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .modifier(ColoredWeatherIcon(condition: dayWeatherSummary.condition))
            }
            
            VStack(alignment: .trailing) {
                Text("\(dayWeatherSummary.highTemp)º")
                    .font(.headline)
                    .fontWeight(.semibold)
                Text("\(dayWeatherSummary.lowTemp)º")
                    .font(.headline)
                    .fontWeight(.semibold)
            }
            .frame(width: 60, alignment: .trailing)
        }
    }
}

struct TenDayForecastRowView_Previews: PreviewProvider {
    static var previews: some View {
        TenDayForecastRowView(dayWeatherSummary: DayWeatherSummary.example)
    }
}
