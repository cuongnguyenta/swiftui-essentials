//
//  WeekForecast.swift
//  WeatherForecast
//
//  Created by Cuong Nguyen on 5/19/25.
//

import SwiftUI

struct WeekForecast: View {
    let forecasts: [Forecast]
    
    private var avgHigh: Int {
        forecasts.reduce(0) { partialResult, forecast in
            partialResult + forecast.high
        } / forecasts.count
    }
    
    private var avgLow: Int {
        forecasts.reduce(0) { partialResult, forecast in
            partialResult + forecast.low
        } / forecasts.count
    }
    
    private var sunDays: Int {
        forecasts.filter { $0.type == .sunset }.count
    }
    
    private var rainDays: Int {
        forecasts.filter { $0.type == .rain }.count
    }
    
    var body: some View {
        VStack(alignment: .leading, spacing: 16.0) {
            Text("Weekly Summary")
                .font(.headline)
                .padding(.bottom, 8)
            
            HStack {
                Group {
                    VStack(alignment: .center) {
                        Text("Avg High")
                        Text("\(avgHigh)")
                            .font(.title2)
                    }
                    .fixedSize()
                    
                    VStack(alignment: .center) {
                        Text("Avg Low")
                        Text("\(avgLow)")
                            .font(.title2)
                    }
                    .fixedSize()
                }
                .frame(maxWidth: .infinity)
                
                Group {
                    VStack(alignment: .center) {
                        Text("Sunny Days")
                        Text("\(sunDays)")
                            .font(.title2)
                    }
                    .fixedSize()
                    
                    VStack(alignment: .center) {
                        Text("Rain Days")
                        Text("\(rainDays)")
                            .font(.title2)
                    }
                    .fixedSize()
                }
                .frame(maxWidth: .infinity)
            }
        }
        .padding()
        .background(Color(.systemBackground))
        .cornerRadius(12)
        .padding(.horizontal)
    }
}

