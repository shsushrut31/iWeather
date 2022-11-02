//
//  ContentView.swift
//  iWeather
//
//  Created by Sushrut Shastri on 2022-11-01.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView() {
            HomeView().tabItem { Text("TODAY") }.tag(1)
            Text("Tomorrow").tabItem { Text("TOMORROW") }.tag(2)
            TenDayWeatherListView().tabItem { Text("10 DAYS") }.tag(3)
        }
        .tint(Color("AppFont"))
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


struct CustomTextColor: ViewModifier {
    func body(content: Content) -> some View {
        content
            .foregroundColor(Color("AppFont"))
    }
}


struct CustomBackgroundColor: ViewModifier {
    func body(content: Content) -> some View {
        content
            .background(Color("AppBackground"))
    }
}


struct CustomGrayColor: ViewModifier {
    func body(content: Content) -> some View {
        content
            .background(Color("AppGray"), in: RoundedRectangle(cornerRadius: 10))
    }
}

struct ColoredWeatherIcon: ViewModifier {
    var condition: SkyCondition
    func body(content: Content) -> some View {
        if condition == .Snowy {
            content
                .foregroundColor(.white)
        } else if condition == .Sunny {
            content
                .symbolVariant(.fill)
                .symbolRenderingMode(.palette)
                .foregroundStyle(.yellow, .gray)
        } else if condition == .Clear {
            content
                .symbolVariant(.fill)
                .symbolRenderingMode(.palette)
                .foregroundStyle(.cyan, .yellow)
        } else if condition == .Cloudy {
            content
                .foregroundColor(.gray)
        } else if condition == .Rainy {
            content
                .symbolVariant(.fill)
                .symbolRenderingMode(.palette)
                .foregroundStyle(.gray, .cyan)
        }
            
    }
}
