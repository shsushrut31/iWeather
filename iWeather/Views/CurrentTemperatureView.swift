//
//  CurrentTemperatureView.swift
//  iWeather
//
//  Created by Sushrut Shastri on 2022-11-01.
//

import SwiftUI

struct CurrentTemperatureView: View {
    let currentWeather: CurrentWeather
    
    var body: some View {
        VStack {
            Text(currentWeather.location)
                .font(.largeTitle)
                .fontWeight(.medium)
                .modifier(CustomTextColor())
            Text("\(currentWeather.temperature)º")
                .font(Font.init(CTFont(CTFontUIFontType.application, size: 100)))
                .padding(EdgeInsets(top: 0, leading: 20, bottom: 0, trailing: 0))
                .modifier(CustomTextColor())
            Text("\(currentWeather.condition.rawValue)")
                .font(.title)
                .fontWeight(.semibold)
                .modifier(CustomTextColor())
            Text("H:\(currentWeather.highTemp)º L:\(currentWeather.lowTemp)º")
                .font(.title)
                .fontWeight(.semibold)
                .modifier(CustomTextColor())
        }
    }
}

struct CurrentTemperatureView_Previews: PreviewProvider {
    static var previews: some View {
        CurrentTemperatureView(currentWeather: CurrentWeather.example)
    }
}
