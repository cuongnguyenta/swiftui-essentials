//
//  ContentView.swift
//  WeatherForecast
//
//  Created by Cuong Nguyen on 5/18/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        HStack {
            DayForecast(day: "Mon", high: 70, low: 50, weatherType: .sunset)
            DayForecast(day: "Tue", high: 70, low: 50, weatherType: .rain)
        }
    }
}

#Preview {
    ContentView()
}

struct DayForecast: View {
    enum WeatherType {
        case rain
        case cloudy
        case sunset
        
        var imageName: String {
            switch self {
            case .rain:
                "cloud.rain.fill"
            case .cloudy:
                "cloud.fill"
            case .sunset:
                "sun.max.fill"
            }
        }
        
        var foregroundColor: Color {
            switch self {
            case .rain: .blue
            case .cloudy: .gray
            case .sunset: .yellow
            }
        }
    }
    
    let day: String
    let high: Int
    let low: Int
    let weatherType: WeatherType
    
    var body: some View {
        VStack {
            Text(day)
                .font(.headline)
            Image(systemName: weatherType.imageName)
                .foregroundStyle(weatherType.foregroundColor)
                .font(.largeTitle)
            Text("High: \(high)")
                .fontWeight(.semibold)
            Text("Low: \(low)")
                .fontWeight(.medium)
                .foregroundStyle(.secondary)
        }
        .padding()
    }
}
