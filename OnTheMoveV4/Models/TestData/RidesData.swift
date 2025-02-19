//
//  RidesData.swift
//  OnTheMoveV4
//
//  Created by user@53 on 13/02/25.
//

import Foundation

let rides: [Ride] = [
    // Ride 1: Satvik as Driver
    Ride(
        id: 1,
        date: Calendar.current.date(byAdding: .day, value: -2, to: Date())!, // Ride 2 days ago
        passengerCount: 3,
        price: 500.0,
        startLocation: locations[0], // India Gate, Delhi
        endLocation: locations[2],   // Gateway of India, Mumbai
        driver: UserReference(
            id: 1,
            firstName: "Satvik",
            lastName: "Sawhney",
            profileImage: "Satvik Sawhney"
        ),
        passengers: [
            UserReference(
                id: 2,
                firstName: "Ishita",
                lastName: "Goel",
                profileImage: "Ishita Goel"
            ),
            UserReference(
                id: 3,
                firstName: "Sayal",
                lastName: "Singh",
                profileImage: "Sayal Singh"
            )
        ],
        status: .completed,
        createdAt: Calendar.current.date(byAdding: .day, value: -3, to: Date())! // Created 3 days ago
    ),
    
    // Ride 2: Ishita as Driver
    Ride(
        id: 2,
        date: Calendar.current.date(byAdding: .day, value: -1, to: Date())!, // Ride 1 day ago
        passengerCount: 2,
        price: 300.0,
        startLocation: locations[1], // MG Road, Bangalore
        endLocation: locations[5],   // Victoria Memorial, Kolkata
        driver: UserReference(
            id: 2,
            firstName: "Ishita",
            lastName: "Goel",
            profileImage: "Ishita Goel"
        ),
        passengers: [
            UserReference(
                id: 1,
                firstName: "Satvik",
                lastName: "Sawhney",
                profileImage: "Satvik Sawhney"
            ),
            UserReference(
                id: 6,
                firstName: "Reva",
                lastName: "Kudchadkar",
                profileImage: "Reva Kudchadkar"
            )
        ],
        status: .completed,
        createdAt: Calendar.current.date(byAdding: .day, value: -2, to: Date())! // Created 2 days ago
    ),
    
    // Ride 3: Satvik as Passenger
    Ride(
        id: 3,
        date: Calendar.current.date(byAdding: .day, value: -5, to: Date())!, // Ride 5 days ago
        passengerCount: 4,
        price: 750.0,
        startLocation: locations[3], // Upper Lake, Bhopal
        endLocation: locations[4],   // Baga Beach, Goa
        driver: UserReference(
            id: 3,
            firstName: "Sayal",
            lastName: "Singh",
            profileImage: "Sayal Singh"
        ),
        passengers: [
            UserReference(
                id: 1,
                firstName: "Satvik",
                lastName: "Sawhney",
                profileImage: "Satvik Sawhney"
            ),
            UserReference(
                id: 4,
                firstName: "Chaitanya",
                lastName: "Goel",
                profileImage: "Chaitanya Goel"
            ),
            UserReference(
                id: 5,
                firstName: "Shamayita",
                lastName: "Biswas",
                profileImage: "Shamayita Biswas"
            )
        ],
        status: .inProgress,
        createdAt: Calendar.current.date(byAdding: .day, value: -6, to: Date())! // Created 6 days ago
    ),
    Ride(
            id: 4,
            date: Calendar.current.date(byAdding: .day, value: -3, to: Date())!, // Ride 3 days ago
            passengerCount: 2,
            price: 400.0,
            startLocation: locations[0], // India Gate, Delhi
            endLocation: locations[1],   // MG Road, Bangalore
            driver: UserReference(
                id: 1,
                firstName: "Satvik",
                lastName: "Sawhney",
                profileImage: "Satvik Sawhney"
            ),
            passengers: [
                UserReference(
                    id: 4,
                    firstName: "Chaitanya",
                    lastName: "Goel",
                    profileImage: "Chaitanya Goel"
                ),
                UserReference(
                    id: 6,
                    firstName: "Reva",
                    lastName: "Kudchadkar",
                    profileImage: "Reva Kudchadkar"
                )
            ],
            status: .completed,
            createdAt: Calendar.current.date(byAdding: .day, value: -4, to: Date())! // Created 4 days ago
        ),
        
        // Ride 5: Ishita as Passenger
        Ride(
            id: 5,
            date: Calendar.current.date(byAdding: .day, value: -7, to: Date())!, // Ride 7 days ago
            passengerCount: 3,
            price: 600.0,
            startLocation: locations[3], // Upper Lake, Bhopal
            endLocation: locations[5],   // Victoria Memorial, Kolkata
            driver: UserReference(
                id: 3,
                firstName: "Sayal",
                lastName: "Singh",
                profileImage: "Sayal Singh"
            ),
            passengers: [
                UserReference(
                    id: 2,
                    firstName: "Ishita",
                    lastName: "Goel",
                    profileImage: "Ishita Goel"
                ),
                UserReference(
                    id: 5,
                    firstName: "Shamayita",
                    lastName: "Biswas",
                    profileImage: "Shamayita Biswas"
                ),
                UserReference(
                    id: 7,
                    firstName: "Ayush",
                    lastName: "Upadhyay",
                    profileImage: "Ayush Upadhyay"
                )
            ],
            status: .completed,
            createdAt: Calendar.current.date(byAdding: .day, value: -8, to: Date())! // Created 8 days ago
        ),
        
        // Ride 6: Ishita as Driver
        Ride(
            id: 6,
            date: Calendar.current.date(byAdding: .day, value: -10, to: Date())!, // Ride 10 days ago
            passengerCount: 4,
            price: 900.0,
            startLocation: locations[1], // MG Road, Bangalore
            endLocation: locations[4],   // Baga Beach, Goa
            driver: UserReference(
                id: 2,
                firstName: "Ishita",
                lastName: "Goel",
                profileImage: "Ishita Goel"
            ),
            passengers: [
                UserReference(
                    id: 1,
                    firstName: "Satvik",
                    lastName: "Sawhney",
                    profileImage: "Satvik Sawhney"
                ),
                UserReference(
                    id: 3,
                    firstName: "Sayal",
                    lastName: "Singh",
                    profileImage: "Sayal Singh"
                ),
                UserReference(
                    id: 5,
                    firstName: "Shamayita",
                    lastName: "Biswas",
                    profileImage: "Shamayita Biswas"
                ),
                UserReference(
                    id: 6,
                    firstName: "Reva",
                    lastName: "Kudchadkar",
                    profileImage: "Reva Kudchadkar"
                )
            ],
            status: .completed,
            createdAt: Calendar.current.date(byAdding: .day, value: -11, to: Date())! // Created 11 days ago
        )
]


var satvikPastRides: [Ride] = [
    // Past Ride 1: 14 days ago
    Ride(
        id: 7,
        date: Calendar.current.date(byAdding: .day, value: -14, to: Date())!, // Ride 14 days ago
        passengerCount: 2,
        price: 420.0,
        startLocation: locations[0], // India Gate, Delhi
        endLocation: locations[1],   // MG Road, Bangalore
        driver: UserReference(
            id: 1,
            firstName: "Satvik",
            lastName: "Sawhney",
            profileImage: "Satvik Sawhney"
        ),
        passengers: [
            // e.g., Ishita & Reva
            UserReference(
                id: 2,
                firstName: "Ishita",
                lastName: "Goel",
                profileImage: "Ishita Goel"
            ),
            UserReference(
                id: 6,
                firstName: "Reva",
                lastName: "Kudchadkar",
                profileImage: "Reva Kudchadkar"
            )
        ],
        status: .completed,
        createdAt: Calendar.current.date(byAdding: .day, value: -15, to: Date())! // Created 15 days ago
    ),
    // Past Ride 2: 10 days ago
    Ride(
        id: 8,
        date: Calendar.current.date(byAdding: .day, value: -10, to: Date())!, // Ride 10 days ago
        passengerCount: 3,
        price: 600.0,
        startLocation: locations[2], // Gateway of India, Mumbai
        endLocation: locations[3],   // Upper Lake, Bhopal
        driver: UserReference(
            id: 1,
            firstName: "Satvik",
            lastName: "Sawhney",
            profileImage: "Satvik Sawhney"
        ),
        passengers: [
            // e.g., Chaitanya, Shamayita, Ayush
            UserReference(
                id: 4,
                firstName: "Chaitanya",
                lastName: "Goel",
                profileImage: "Chaitanya Goel"
            ),
            UserReference(
                id: 5,
                firstName: "Shamayita",
                lastName: "Biswas",
                profileImage: "Shamayita Biswas"
            ),
            UserReference(
                id: 7,
                firstName: "Ayush",
                lastName: "Upadhyay",
                profileImage: "Ayush Upadhyay"
            )
        ],
        status: .completed,
        createdAt: Calendar.current.date(byAdding: .day, value: -11, to: Date())! // Created 11 days ago
    ),
    // Past Ride 3: 5 days ago
    Ride(
        id: 9,
        date: Calendar.current.date(byAdding: .day, value: -5, to: Date())!, // Ride 5 days ago
        passengerCount: 2,
        price: 350.0,
        startLocation: locations[1], // MG Road, Bangalore
        endLocation: locations[5],   // Victoria Memorial, Kolkata
        driver: UserReference(
            id: 1,
            firstName: "Satvik",
            lastName: "Sawhney",
            profileImage: "Satvik Sawhney"
        ),
        passengers: [
            // e.g., Ishita, Sayal
            UserReference(
                id: 2,
                firstName: "Ishita",
                lastName: "Goel",
                profileImage: "Ishita Goel"
            ),
            UserReference(
                id: 3,
                firstName: "Sayal",
                lastName: "Singh",
                profileImage: "Sayal Singh"
            )
        ],
        status: .completed,
        createdAt: Calendar.current.date(byAdding: .day, value: -6, to: Date())! // Created 6 days ago
    )
]

let requestsForUpcomingRide = RideRequest(
    id: 101,
    rideId: 10,
    user: UserReference(
        id: 4,
        firstName: "Chaitanya",
        lastName: "Goel",
        profileImage: "Chaitanya Goel"
    ),
    requestDate: Date(),
    status: .pending
)


var satvikUpcomingRides: [Ride] = [
    // Ride 10: Satvik as the driver (2 days from now)
    Ride(
        id: 10,
        date: Calendar.current.date(byAdding: .day, value: 2, to: Date())!, // 2 days in the future
        passengerCount: 3,
        price: 400.0,
        startLocation: locations[0], // India Gate, Delhi
        endLocation: locations[4],   // Baga Beach, Goa
        driver: UserReference(
            id: 1,
            firstName: "Satvik",
            lastName: "Sawhney",
            profileImage: "Satvik Sawhney"
        ),
        passengers: [
            UserReference(
                id: 2,
                firstName: "Ishita",
                lastName: "Goel",
                profileImage: "Ishita Goel"
            ),
            UserReference(
                id: 3,
                firstName: "Sayal",
                lastName: "Singh",
                profileImage: "Sayal Singh"
            )
        ],
        status: .inProgress,
        createdAt: Calendar.current.date(byAdding: .day, value: -1, to: Date())! // Created 1 day ago
    ),
    
    // Ride 11: Satvik as passenger (4 days from now)
    // Another user drives, e.g., Ishita (ID = 2)
    Ride(
        id: 11,
        date: Calendar.current.date(byAdding: .day, value: 4, to: Date())!, // 4 days in the future
        passengerCount: 4,
        price: 550.0,
        startLocation: locations[1], // MG Road, Bangalore
        endLocation: locations[2],   // Gateway of India, Mumbai
        driver: UserReference(
            id: 2,
            firstName: "Ishita",
            lastName: "Goel",
            profileImage: "Ishita Goel"
        ),
        passengers: [
            UserReference(
                id: 1,
                firstName: "Satvik",
                lastName: "Sawhney",
                profileImage: "Satvik Sawhney"
            ),
            UserReference(
                id: 6,
                firstName: "Reva",
                lastName: "Kudchadkar",
                profileImage: "Reva Kudchadkar"
            ),
            UserReference(
                id: 7,
                firstName: "Ayush",
                lastName: "Upadhyay",
                profileImage: "Ayush Upadhyay"
            )
        ],
        status: .inProgress,
        createdAt: Calendar.current.date(byAdding: .day, value: -1, to: Date())! // Created 1 day ago
    ),
    
    // Ride 12: Satvik as passenger (7 days from now)
    // Another user drives, e.g., Sayal (ID = 3)
    Ride(
        id: 12,
        date: Calendar.current.date(byAdding: .day, value: 7, to: Date())!, // 7 days in the future
        passengerCount: 3,
        price: 600.0,
        startLocation: locations[3], // Upper Lake, Bhopal
        endLocation: locations[5],   // Victoria Memorial, Kolkata
        driver: UserReference(
            id: 3,
            firstName: "Sayal",
            lastName: "Singh",
            profileImage: "Sayal Singh"
        ),
        passengers: [
            UserReference(
                id: 1,
                firstName: "Satvik",
                lastName: "Sawhney",
                profileImage: "Satvik Sawhney"
            ),
            UserReference(
                id: 5,
                firstName: "Shamayita",
                lastName: "Biswas",
                profileImage: "Shamayita Biswas"
            )
        ],
        status: .inProgress,
        createdAt: Calendar.current.date(byAdding: .day, value: -2, to: Date())! // Created 2 days ago
    )
]
