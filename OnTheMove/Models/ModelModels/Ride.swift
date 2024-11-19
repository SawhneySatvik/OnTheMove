//
//  Ride.swift
//  OnTheMove
//
//  Created by user@53 on 19/11/24.
//

import Foundation

struct Ride: Codable {
    let ride_id: Int
    let trip_id: Int
    
    let rider_id: Int
    
    let occupied_seats: Int
    let created_at: Date
    let verification_status: Bool
    
    let status: Status
    let cost: Double
    
    //Relationship
    let trip: Trip
}
