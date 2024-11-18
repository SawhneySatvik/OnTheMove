//
//  ProfileModel.swift
//  OnTheMove
//
//  Created by user@53 on 12/11/24.
//

import Foundation

struct Profile{
    let user_id: Int
    let first_name: String
    let last_name: String
    let email: String
    let phone: Int
    let date_of_birth: String
    let profile_picture: String
    let bio: String
    let verification_status: Bool
    let favorite_places: [Location]
    let wallet: Double
}

let satvik = Profile(
    user_id: 1,
    first_name: "Satvik",
    last_name: "Sawhney",
    email: "satvik@gmail.com",
    phone: 9999900000,
    date_of_birth: "01-01-2001",
    profile_picture: "SatvikProfilePicture",
    bio: "I am an avid rider and a passionate cyclist. I have been riding for over 10 years and have been fortunate enough to ride in many of the most beautiful places in the world.",
    verification_status: true,
    favorite_places: [
        location1,
        location2
    ],
    wallet: 10000
)

let users: [Profile] = [satvik]
