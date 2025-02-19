//
//  LocationData.swift
//  OnTheMoveV4
//
//  Created by user@53 on 13/02/25.
//


let locations: [Location] = [
    Location(
        locationId: "loc1",
        latitude: 28.7041, // Delhi
        longitude: 77.1025,
        address: Address(
            id: "addr1",
            name: "India Gate",
            description: "Historical Monument in Delhi",
            address: "Rajpath, India Gate",
            city: "Delhi",
            state: "Delhi",
            country: "India",
            zip: "110001"
        )
    ),
    Location(
        locationId: "loc2",
        latitude: 12.9716, // Bangalore
        longitude: 77.5946,
        address: Address(
            id: "addr2",
            name: "MG Road",
            description: "Shopping and Commercial Hub",
            address: "MG Road",
            city: "Bangalore",
            state: "Karnataka",
            country: "India",
            zip: "560001"
        )
    ),
    Location(
        locationId: "loc3",
        latitude: 19.0760, // Mumbai
        longitude: 72.8777,
        address: Address(
            id: "addr3",
            name: "Gateway of India",
            description: "Famous Tourist Spot in Mumbai",
            address: "Apollo Bandar, Colaba",
            city: "Mumbai",
            state: "Maharashtra",
            country: "India",
            zip: "400001"
        )
    ),
    Location(
        locationId: "loc4",
        latitude: 23.2599, // Bhopal
        longitude: 77.4126,
        address: Address(
            id: "addr4",
            name: "Upper Lake",
            description: "Beautiful Lake in Bhopal",
            address: "Upper Lake Area",
            city: "Bhopal",
            state: "Madhya Pradesh",
            country: "India",
            zip: "462001"
        )
    ),
    Location(
        locationId: "loc5",
        latitude: 15.2993, // Goa
        longitude: 74.1240,
        address: Address(
            id: "addr5",
            name: "Baga Beach",
            description: "Popular Beach in Goa",
            address: "Baga Beach Road",
            city: "Panaji",
            state: "Goa",
            country: "India",
            zip: "403516"
        )
    ),
    Location(
        locationId: "loc6",
        latitude: 22.5726, // Kolkata
        longitude: 88.3639,
        address: Address(
            id: "addr6",
            name: "Victoria Memorial",
            description: "Iconic Monument in Kolkata",
            address: "1, Queen's Way",
            city: "Kolkata",
            state: "West Bengal",
            country: "India",
            zip: "700071"
        )
    )
]
