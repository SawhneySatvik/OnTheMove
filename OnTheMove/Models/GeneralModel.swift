//
//  GeneralModel.swift
//  OnTheMove
//
//  Created by user@53 on 12/11/24.
//

struct Location{
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

let location1: Location = .init(
    location_id: "1",
    latitude: 28.6139,
    longitude: 77.2090,
    name: "Connaught Place",
    address: "Connaught Place, New Delhi, Delhi 110001, India",
    description: "Connaught Place is a bustling commercial and business center in New Delhi.",
    city: "New Delhi",
    state: "Delhi",
    zip: "110001"
)

let location2: Location = .init(
    location_id: "2",
    latitude: 28.6139,
    longitude: 77.2090,
    name: "Connaught Place",
    address: "Connaught Place, New Delhi, Delhi 110001, India",
    description: "Connaught Place is a bustling commercial and business center in New Delhi.",
    city: "New Delhi",
    state: "Delhi",
    zip: "110001"
)
