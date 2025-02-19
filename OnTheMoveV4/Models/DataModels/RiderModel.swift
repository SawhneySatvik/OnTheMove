//
//  RiderModel.swift
//  OnTheMoveV4
//
//  Created by user@53 on 13/02/25.
//

struct TripDetails {
    let tripType: String
    let source: String
    let destination: String
    let date: String
    let time: String
    let passengerCount: Int
    let modeOfTransport: String
}


struct Rider{
    let name: String
    let passengers: Int
    let cost: Double
    let time: String
    let rider_id: Int
    let ride_id: Int
}

let riders: [Rider] = [
    .init(name: "Ayush", passengers: 3, cost: 100, time: "10:00", rider_id: 1, ride_id: 1),
    .init(name: "Ishita", passengers: 2, cost: 200, time: "11:00", rider_id: 2, ride_id: 2),
    .init(name: "Chaitanya", passengers: 3, cost: 300, time: "12:00", rider_id: 3, ride_id: 3),
    .init(name: "Sayal", passengers: 1, cost: 400, time: "13:00", rider_id: 4, ride_id: 4),
    .init(name: "Aunty", passengers: 2, cost: 500, time: "14:00", rider_id: 5, ride_id: 5)
]

let safeRiders: [Rider] = [
    .init(name: "Ishita", passengers: 2, cost: 200, time: "11:00", rider_id: 2, ride_id: 2),
    .init(name: "Aunty", passengers: 2, cost: 500, time: "14:00", rider_id: 5, ride_id: 5)
]

struct FavouritePeople{
    let user_id: Int
    let image_id: String
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

struct RideTest:Codable{
    let ride_id: Int
    let date: String
    let source: LocationTest
    let destination: LocationTest
    let destinationImage: String
}

var favouriteLocationsTest: [LocationTest] = [
    LocationTest(
        location_id: "LOC001",
        latitude: 28.7041,
        longitude: 77.1025,
        name: "Home",
        address: "123 Home Street, New Delhi",
        description: "This is your primary residence.",
        city: "New Delhi",
        state: "Delhi",
        zip: "110001"
    ),
    LocationTest(
        location_id: "LOC002",
        latitude: 28.5562,
        longitude: 77.1000,
        name: "Airport",
        address: "Indira Gandhi International Airport, New Delhi",
        description: "Nearest airport in your city.",
        city: "New Delhi",
        state: "Delhi",
        zip: "110037"
    ),
    LocationTest(
        location_id: "LOC003",
        latitude: 28.4595,
        longitude: 77.0266,
        name: "Work",
        address: "Cyber Hub, Gurugram",
        description: "Your office location.",
        city: "Gurugram",
        state: "Haryana",
        zip: "122002"
    ),
    LocationTest(
        location_id: "LOC004",
        latitude: 28.4810,
        longitude: 77.0554,
        name: "Gym",
        address: "Fitness Center, Gurugram",
        description: "Your go-to place for workouts.",
        city: "Gurugram",
        state: "Haryana",
        zip: "122001"
    ),
    LocationTest(
        location_id: "LOC005",
        latitude: 28.5665,
        longitude: 77.2090,
        name: "Aerocity",
        address: "Worldmark, Aerocity, New Delhi",
        description: "A vibrant business hub and shopping area.",
        city: "New Delhi",
        state: "Delhi",
        zip: "110037"
    )
]


var testRides: [RideTest] = [
    RideTest(
        ride_id: 1,
        date: "2024-12-15",
        source: LocationTest(
            location_id: "LOC001",
            latitude: 28.6139,
            longitude: 77.2090,
            name: "India Gate",
            address: "Rajpath Marg, India Gate, New Delhi, Delhi 110001",
            description: "A historic landmark and war memorial.",
            city: "New Delhi",
            state: "Delhi",
            zip: "110001"
        ),
        destination: LocationTest(
            location_id: "LOC002",
            latitude: 28.6127,
            longitude: 77.2773,
            name: "Akshardham Temple",
            address: "Noida Mor, Pandav Nagar, New Delhi, Delhi 110092",
            description: "A magnificent Hindu temple complex.",
            city: "New Delhi",
            state: "Delhi",
            zip: "110092"
        ),
        destinationImage: "OneWay"
    ),
    RideTest(
        ride_id: 2,
        date: "2024-12-16",
        source: LocationTest(
            location_id: "LOC003",
            latitude: 12.9716,
            longitude: 77.5946,
            name: "Cubbon Park",
            address: "Kasturba Road, Sampangi Rama Nagar, Bengaluru, Karnataka 560001",
            description: "A large park and garden space in Bengaluru.",
            city: "Bengaluru",
            state: "Karnataka",
            zip: "560001"
        ),
        destination: LocationTest(
            location_id: "LOC004",
            latitude: 12.2958,
            longitude: 76.6394,
            name: "Mysore Palace",
            address: "Sayyaji Rao Road, Mysuru, Karnataka 570001",
            description: "A historical palace and royal residence.",
            city: "Mysuru",
            state: "Karnataka",
            zip: "570001"
        ),
        destinationImage: "Ride2"
    ),
    RideTest(
        ride_id: 3,
        date: "2024-12-17",
        source: LocationTest(
            location_id: "LOC005",
            latitude: 22.5726,
            longitude: 88.3639,
            name: "Victoria Memorial",
            address: "1, Queen's Way, Kolkata, West Bengal 700071",
            description: "A large marble building and museum.",
            city: "Kolkata",
            state: "West Bengal",
            zip: "700071"
        ),
        destination: LocationTest(
            location_id: "LOC006",
            latitude: 22.5645,
            longitude: 88.3433,
            name: "Howrah Bridge",
            address: "Howrah, Kolkata, West Bengal 700001",
            description: "An iconic cantilever bridge over the Hooghly River.",
            city: "Kolkata",
            state: "West Bengal",
            zip: "700001"
        ),
        destinationImage: "InterCity"
    )
]
