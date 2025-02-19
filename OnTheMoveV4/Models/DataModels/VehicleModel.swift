//
//  VehicleModel.swift
//  OnTheMoveV4
//
//  Created by user@53 on 13/02/25.
//

import Foundation

struct VehicleReference: Codable {
    let id: Int
    let model: String
    let type: VehicleType
    let color: String
    let registration: String
}

struct Vehicle: Codable {
    let id: Int
    let owner: UserReference
    
    let type: VehicleType
    let model: String
    let color: String
    let registration: String
    let image: String
    
    // Relationships
    var rides: [RideReference] = [] // Lightweight ride references
}


struct Impact:Codable {
    let user_id:Int
    let impact_environment:Double
    let impact_money:Double
    let total_trips:Int
    let total_distance:Double
    let rating:Double
}
