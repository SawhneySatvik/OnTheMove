//
//  Location.swift
//  OnTheMove
//
//  Created by user@53 on 19/11/24.
//

import Foundation

struct Location: Codable{
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
