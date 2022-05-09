//
//  WeatherData.swift
//  Clima
//
//  Created by Jatin Kindra on 05/05/22.
//  Copyright © 2022 App Brewery. All rights reserved.
//

import Foundation

//our weatherData structure conforms the decodable protocol.
struct WeatherData: Codable {
    let name: String
    let main: Main
    let weather: [Weather]
}

struct Main: Codable {
    let temp: Double
}

struct Weather: Codable {
    let description: String
    let id: Int
}
