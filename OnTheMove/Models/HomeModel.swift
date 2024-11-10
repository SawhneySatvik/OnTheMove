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
}

struct Impact{
    let user_id: Int
    let month: String
    let year: String
    let carbon_emissions: Double
    let money_saved: Double
}

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


var upcomingRides: [UpcomingRides] = [
    UpcomingRides(
        ride_id: 1,
        date: "23 September 2024, 10:00 AM",
        source: "S.R.M. University, Katankulathur, Chennai",
        destination: "Meenambakkam Road, Chennai"
    ),
    UpcomingRides(
        ride_id: 2,
        date: "01 October 2024, 10:00 AM",
        source: "S.R.M. University, Katankulathur, Chennai",
        destination: "Meenambakkam Road, Chennai"
    ),
    UpcomingRides(
        ride_id: 3,
        date: "23 September 2024, 10:00 AM",
        source: "S.R.M. University, Katankulathur, Chennai",
        destination: "Meenambakkam Road, Chennai"
    ),
    UpcomingRides(
        ride_id: 4,
        date: "23 September 2024, 10:00 AM",
        source: "S.R.M. University, Katankulathur, Chennai",
        destination: "Meenambakkam Road, Chennai"
    )
]
