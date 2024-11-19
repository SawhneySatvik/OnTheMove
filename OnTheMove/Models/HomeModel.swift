//
//  HomeModel.swift
//  OnTheMove
//
//  Created by user@53 on 29/10/24.
//

import Foundation

struct UpcomingRides{
    let ride_id: Int
    let date: String
    let source: String
    let destination: String
    let destinationImage: String
}

struct GeneralUpcomingRides{
    let ride_id: Int
    let date: String
    let source: Location
    let destination: Location
    let destinationImage: String
}

struct FrequentLocation{
    let user_id: Int
    let frequent_location_id: Int
    let symbol: String
    let name: String
    let location: Location
}

var favouritePeople: [FavouritePeople] = [
    FavouritePeople(
        user_id: 1,
        image_id: "Satvik"
    ),
    FavouritePeople(
        user_id: 2,
        image_id: "Ishita"
    ),
    FavouritePeople(
        user_id: 3,
        image_id: "Sayal"
    ),
    FavouritePeople(
        user_id: 4,
        image_id: "Chaitanya"
    ),
    FavouritePeople(
        user_id: 5,
        image_id: "Aunty"
    )
]

//mock
let sourceLocation = Location(
    location_id: "LOC001",
    latitude: 28.6139,
    longitude: 77.2090,
    name: "India Gate",
    address: "Rajpath, India Gate, New Delhi",
    description: "A war memorial and one of the iconic landmarks of Delhi.",
    city: "New Delhi",
    state: "Delhi",
    zip: "110001"
)

let destination1 = Location(
    location_id: "LOC002",
    latitude: 28.5535,
    longitude: 77.2588,
    name: "Qutub Minar",
    address: "Qutub Minar Complex, Mehrauli, New Delhi",
    description: "A UNESCO World Heritage Site and the tallest brick minaret in the world.",
    city: "New Delhi",
    state: "Delhi",
    zip: "110030"
)

let destination2 = Location(
    location_id: "LOC003",
    latitude: 28.5245,
    longitude: 77.1855,
    name: "Lotus Temple",
    address: "Lotus Temple Road, Kalkaji, New Delhi",
    description: "A Baháʼí House of Worship known for its flowerlike architecture.",
    city: "New Delhi",
    state: "Delhi",
    zip: "110019"
)

let destination3 = Location(
    location_id: "LOC004",
    latitude: 28.6562,
    longitude: 77.2410,
    name: "Red Fort",
    address: "Netaji Subhash Marg, Lal Qila, Chandni Chowk, Delhi",
    description: "A historic fort that served as the main residence of the Mughal emperors.",
    city: "Delhi",
    state: "Delhi",
    zip: "110006"
)

// Mock data for `GeneralUpcomingRides`
let generalUpcomingRides = [
    GeneralUpcomingRides(
        ride_id: 101,
        date: "2024-11-20",
        source: sourceLocation,
        destination: destination1,
        destinationImage: "onBoarding1"
    ),
    GeneralUpcomingRides(
        ride_id: 102,
        date: "2024-11-21",
        source: sourceLocation,
        destination: destination2,
        destinationImage: "onBoarding1"
    ),
    GeneralUpcomingRides(
        ride_id: 103,
        date: "2024-11-22",
        source: sourceLocation,
        destination: destination3,
        destinationImage: "onBoarding1"
    )
]
