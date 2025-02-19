//
//  UserModel.swift
//  OnTheMoveV4
//
//  Created by user@53 on 13/02/25.
//

import Foundation

struct UserReference: Codable {
    let id: Int
    let firstName: String
    let lastName: String
    let profileImage: String
}

struct User: Codable {
    let id: Int
    let profileImage: String
    let password: String
    
    let firstName: String
    let lastName: String
    let email: String
    let phone: String
    let dateOfBirth: Date
    let gender: String
    
    // Relationships
    var frequentLocations: [Location] = []
    var friends: [UserReference] = []
    var vehicles: [VehicleReference] = []
    
    let verificationStatus: Bool
    let createdAt: Date
    
    enum CodingKeys: String, CodingKey {
        case id
        case profileImage = "profile_image"
        case password
        case firstName = "first_name"
        case lastName = "last_name"
        case email
        case phone
        case dateOfBirth = "date_of_birth"
        case gender
        case frequentLocations = "frequent_locations"
        case friends
        case vehicles
        case verificationStatus = "verficial_status"
        case createdAt = "created_at"
    }
}
