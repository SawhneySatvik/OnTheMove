//
//  Riders.swift
//  OnTheMove
//
//  Created by user@53 on 19/11/24.
//

struct Rider{
    let name: String
    let passengers: Int
    let cost: Double
    let time: String
    let rider_id: Int
    let ride_id: Int
}

let riders: [Rider] = [
    .init(name: "Satvik", passengers: 3, cost: 100, time: "10:00", rider_id: 1, ride_id: 1),
    .init(name: "Ishita", passengers: 2, cost: 200, time: "11:00", rider_id: 2, ride_id: 2),
    .init(name: "Chaitanya", passengers: 3, cost: 300, time: "12:00", rider_id: 3, ride_id: 3),
    .init(name: "Sayal", passengers: 1, cost: 400, time: "13:00", rider_id: 4, ride_id: 4),
    .init(name: "Aunty", passengers: 2, cost: 500, time: "14:00", rider_id: 5, ride_id: 5),
]
