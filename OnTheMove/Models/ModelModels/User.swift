//
//  User.swift
//  OnTheMove
//
//  Created by user@53 on 19/11/24.
//

import Foundation

struct User:Codable {
    let user_id: String
    let username: String
    let first_name: String
    let last_name: String
    
    let email: String
    let phone_number: String
    let date_of_birth: Date // age -> UTC.now.year - date_of_birth.year
    let gender: Gender
    let profile_image: String
    
    let verification_status: Bool
    let bio: String
    let created_at: String
}
