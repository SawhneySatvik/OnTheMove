//
//  RideRequest.swift
//  OnTheMoveV4
//
//  Created by user@53 on 13/02/25.
//

import Foundation

enum RequestStatus: String, Codable {
    case pending
    case accepted
    case declined
}

// This struct represents a request by a user to join a specific ride.
struct RideRequest: Codable {
    let id: Int           // Unique ID for the request
    let rideId: Int       // The ride the user wants to join
    let user: UserReference
    let requestDate: Date
    var status: RequestStatus
}

