//
//  Enums.swift
//  OnTheMoveV4
//
//  Created by user@53 on 13/02/25.
//


enum Gender: String, Codable {
    case male = "Male"
    case female = "Female"
    case other = "Other"
}

enum RideStatus: String, Codable {
    case completed = "Completed"
    case inProgress = "InProgress"
    case cancelled = "Canelled"
}

enum VehicleType: String, Codable {
    case car = "Car"
    case bike = "Bike"
    case van = "Van"
}
