//
//  ContentView.swift
//  WeatherForecast
//
//  Created by Cuong Nguyen on 5/18/25.
//

import SwiftUI

struct ContentView: View {
    let forecast: [Forecast] = [
        Forecast(day: "Mon", low: 50, high: 70, type: .cloudy),
        Forecast(day: "Tue", low: 40, high: 80, type: .sunset),
        Forecast(day: "Wed", low: 20, high: 50, type: .rain),
        Forecast(day: "Thurs", low: 40, high: 80, type: .sunset),
    ]
    
    var body: some View {
        VStack(spacing: 4) {
            DailyForecast(forecasts: forecast).padding()
            WeekForecast(forecasts: forecast)
            Spacer()
        }
        .padding(.vertical)
        .background(Color(.secondarySystemBackground))
    }
}

#Preview {
    ContentView()
}

