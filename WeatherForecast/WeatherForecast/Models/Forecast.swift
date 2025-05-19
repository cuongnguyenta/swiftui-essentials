//
//  Forecast.swift
//  WeatherForecast
//
//  Created by Cuong Nguyen on 5/19/25.
//

import Foundation

struct Forecast: Identifiable {
    let id = UUID()
    let day: String
    let low: Int
    let high: Int
    let type: WeatherType
}


enum WeatherType {
    case rain
    case cloudy
    case sunset
}
