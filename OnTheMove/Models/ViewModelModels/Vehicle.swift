//
//  Vehicle.swift
//  OnTheMove
//
//  Created by user@53 on 19/11/24.
//

import Foundation

struct Vehicle: Codable {
    let id: Int
    let owner_id: Int
    
    let type: VehicleType
    let model: String
    let color: String
    let registration: String
    
    let image: String

    let added: String
    
    //Relations
    let owner: User
    let trips: [Trip]
}
