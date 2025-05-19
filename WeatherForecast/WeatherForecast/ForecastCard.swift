//
//  ForecastCard.swift
//  WeatherForecast
//
//  Created by Cuong Nguyen on 5/19/25.
//

import SwiftUI

struct ForecastCard: View {
    let day: String
    let low: Int
    let high: Int
    let type: WeatherType
    
    var highTextColor: Color {
        if high > 80 {
            return .red
        }
        return .black
    }
    
    var body: some View {
        VStack {
            Text(day)
                .font(.system(.subheadline, design: .rounded))
                .foregroundStyle(.secondary)
            
            Image(systemName: type.icon)
                .font(.title2)
                .foregroundStyle(type.iconColor)
            
            HStack(spacing: 4) {
                Text("\(high)")
                    .font(.system(.body, design: .rounded, weight: .bold))
                    .foregroundStyle(highTextColor)
                Text("\(low)")
                    .font(.system(.caption, design: .rounded))
                    .foregroundStyle(.secondary)
            }
        }
        .padding()
        .background(Color(.systemBackground))
        .clipShape(.buttonBorder)
        .shadow(color: .black.opacity(0.1), radius: 5, x: 0, y: 2)
    }
}

struct DailyForecast: View {
    let forecasts: [Forecast]
    
    var body: some View {
        ScrollView(.horizontal) {
            HStack(spacing: 20) {
                ForEach(forecasts) {
                    ForecastCard(day: $0.day, low: $0.low, high: $0.high, type: $0.type)
                }
            }
            .padding(.horizontal)
        }
    }
}

extension WeatherType {
    var icon: String {
        switch self {
        case .rain:
            "cloud.rain.fill"
        case .cloudy:
            "cloud.fill"
        case .sunset:
            "sun.max.fill"
        }
    }
    
    var iconColor: Color {
        switch self {
        case .rain: .gray
        case .cloudy: .blue
        case .sunset: .yellow
        }
    }
}
