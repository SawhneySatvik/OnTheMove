//
//  Enums.swift
//  OnTheMove
//
//  Created by user@53 on 19/11/24.
//

import Foundation

enum VehicleType: String, Codable {
    case car = "car"
    case bike = "bike"
    case autoRickshaw = "auto rickshaw"
}

enum CarType: String, Codable {
    case sedan = "sedan"
    case hatchback = "hatchback"
    case SUV = "SUV"
}
