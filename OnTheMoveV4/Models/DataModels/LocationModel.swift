//
//  LocationModel.swift
//  OnTheMoveV4
//
//  Created by user@53 on 13/02/25.
//

struct LocationTest: Codable{
    let location_id: String
    let latitude: Double
    let longitude: Double
    let name: String?
    let address: String
    let description: String?
    let city: String?
    let state: String?
    let zip: String?
}

struct Location: Codable {
    let locationId: String
    let latitude: Double
    let longitude: Double
    let address: Address

    enum CodingKeys: String, CodingKey {
        case locationId = "location_id"
        case latitude
        case longitude
        case address
    }
}

struct Address: Codable {
    let id: String
    let name: String?
    let description: String?
    
    let address: String
    let city: String?
    let state: String?
    let country: String?
    let zip: String?
}
