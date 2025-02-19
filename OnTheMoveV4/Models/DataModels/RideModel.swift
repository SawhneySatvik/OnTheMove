//
//  RideModel.swift
//  OnTheMoveV4
//
//  Created by user@53 on 13/02/25.
//

import Foundation

// Ride Reference Model
struct RideReference: Codable {
    let id: Int
    let date: Date
    let status: RideStatus
}

// Ride Model
struct Ride: Codable {
    let id: Int
    let date: Date
    //let type: RideType
    
    let passengerCount: Int
    let price: Double
    
    let startLocation: Location
    let endLocation: Location
    
    let driver: UserReference
    var passengers: [UserReference] = [] // Lightweight user references
    let status: RideStatus
    
    let createdAt: Date
}
