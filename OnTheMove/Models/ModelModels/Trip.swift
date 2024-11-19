//
//  Trip.swift
//  OnTheMove
//
//  Created by user@53 on 19/11/24.
//

import Foundation

struct Trip: Codable {
    let trip_id: Int
    let maker_id: Int
    
    let source: Location
    let destination: Location
    let start_date: Date
    let end_date: Date
    let total_passengers: Int
    let created_at: Date
    let verification_status: Bool
    let cost: Double
    let status: Status
    
    // Relationships
    let maker: User
    let rides: [Ride]
    
}
