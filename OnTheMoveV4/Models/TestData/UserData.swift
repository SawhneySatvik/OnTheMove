//
//  UserData.swift
//  OnTheMoveV4
//
//  Created by user@53 on 13/02/25.
//

import Foundation

let users: [User] = [
    User(
        id: 1,
        profileImage: "Satvik",
        password: "password1",
        firstName: "Satvik",
        lastName: "Sawhney",
        email: "satvik.sawhney@example.com",
        phone: "+911234567890",
        dateOfBirth: Calendar.current.date(byAdding: .year, value: -19, to: Date())!,
        gender: "Male",
        frequentLocations: [
            // Location 1: Home
            Location(
                locationId: "loc1",
                latitude: 28.7041,
                longitude: 77.1025,
                address: Address(
                    id: "addr1",
                    name: "Home",
                    description: "Home in Delhi",
                    address: "123 Delhi Street",
                    city: "Delhi",
                    state: "Delhi",
                    country: "India",
                    zip: "110001"
                )
            ),
            // Location 2: Gym
            Location(
                locationId: "loc2",
                latitude: 28.7056,
                longitude: 77.0988,
                address: Address(
                    id: "addr2",
                    name: "Gym",
                    description: "Fitness Center near Satvik's home",
                    address: "456 Gym Road",
                    city: "Delhi",
                    state: "Delhi",
                    country: "India",
                    zip: "110002"
                )
            ),
            // Location 3: Airport
            Location(
                locationId: "loc3",
                latitude: 28.5562,
                longitude: 77.1000,
                address: Address(
                    id: "addr3",
                    name: "Airport",
                    description: "Delhi's primary international airport",
                    address: "Terminal 3, IGI Airport",
                    city: "Delhi",
                    state: "Delhi",
                    country: "India",
                    zip: "110037"
                )
            ),
            // Location 4: University
            Location(
                locationId: "loc4",
                latitude: 28.6743,
                longitude: 77.1080,
                address: Address(
                    id: "addr4",
                    name: "University",
                    description: "Satvik's University Campus",
                    address: "North Campus, Delhi University",
                    city: "Delhi",
                    state: "Delhi",
                    country: "India",
                    zip: "110007"
                )
            )
        ],
        friends: [
            UserReference(
                id: 2,
                firstName: "Ishita",
                lastName: "Goel",
                profileImage: "Ishita"
            ),
            UserReference(
                id: 3,
                firstName: "Sayal",
                lastName: "Singh",
                profileImage: "Sayal"
            ),
            UserReference(
                id: 4,
                firstName: "Chaitanya",
                lastName: "Goel",
                profileImage: "Chaitanya"
            ),
            UserReference(
                id: 6,
                firstName: "Reva",
                lastName: "Kudchadkar",
                profileImage: "Reva"
            ),
            UserReference(
                id: 7,
                firstName: "Ayush",
                lastName: "Upadhyay",
                profileImage: "Ayush"
            )
        ],
        vehicles: [],
        verificationStatus: true,
        createdAt: Date()
    )
    ,
    User(
        id: 2,
        profileImage: "Ishita",
        password: "password2",
        firstName: "Ishita",
        lastName: "Goel",
        email: "ishita.goel@example.com",
        phone: "+911234567891",
        dateOfBirth: Calendar.current.date(byAdding: .year, value: -18, to: Date())!,
        gender: "Female",
        frequentLocations: [
            Location(
                locationId: "loc2",
                latitude: 28.7041,
                longitude: 77.1025,
                address: Address(
                    id: "addr2",
                    name: "Ishita's Residence",
                    description: "Family home in Delhi",
                    address: "456 Delhi Lane",
                    city: "Delhi",
                    state: "Delhi",
                    country: "India",
                    zip: "110002"
                )
            )
        ],
        friends: [],
        vehicles: [],
        verificationStatus: true,
        createdAt: Date()
    ),
    User(
        id: 3,
        profileImage: "Sayal",
        password: "password3",
        firstName: "Sayal",
        lastName: "Singh",
        email: "sayal.singh@example.com",
        phone: "+911234567892",
        dateOfBirth: Calendar.current.date(byAdding: .year, value: -20, to: Date())!,
        gender: "Male",
        frequentLocations: [
            Location(
                locationId: "loc3",
                latitude: 23.2599,
                longitude: 77.4126,
                address: Address(
                    id: "addr3",
                    name: "Sayal's House",
                    description: "House in Madhya Pradesh",
                    address: "789 MP Road",
                    city: "Bhopal",
                    state: "Madhya Pradesh",
                    country: "India",
                    zip: "462001"
                )
            )
        ],
        friends: [],
        vehicles: [],
        verificationStatus: true,
        createdAt: Date()
    ),
    User(
        id: 4,
        profileImage: "Chaitanya",
        password: "password4",
        firstName: "Chaitanya",
        lastName: "Goel",
        email: "chaitanya.goel@example.com",
        phone: "+911234567893",
        dateOfBirth: Calendar.current.date(byAdding: .year, value: -19, to: Date())!,
        gender: "Male",
        frequentLocations: [
            Location(
                locationId: "loc4",
                latitude: 28.7041,
                longitude: 77.1025,
                address: Address(
                    id: "addr4",
                    name: "Chaitanya's Place",
                    description: "Residence in Delhi",
                    address: "321 Delhi Main Road",
                    city: "Delhi",
                    state: "Delhi",
                    country: "India",
                    zip: "110003"
                )
            )
        ],
        friends: [],
        vehicles: [],
        verificationStatus: true,
        createdAt: Date()
    ),
    User(
        id: 5,
        profileImage: "Shamayita",
        password: "password5",
        firstName: "Shamayita",
        lastName: "Biswas",
        email: "shamayita.biswas@example.com",
        phone: "+911234567894",
        dateOfBirth: Calendar.current.date(byAdding: .year, value: -18, to: Date())!,
        gender: "Female",
        frequentLocations: [
            Location(
                locationId: "loc5",
                latitude: 22.5726,
                longitude: 88.3639,
                address: Address(
                    id: "addr5",
                    name: "Shamayita's Home",
                    description: "Home in West Bengal",
                    address: "101 Kolkata Street",
                    city: "Kolkata",
                    state: "West Bengal",
                    country: "India",
                    zip: "700001"
                )
            )
        ],
        friends: [],
        vehicles: [],
        verificationStatus: true,
        createdAt: Date()
    ),
    User(
        id: 6,
        profileImage: "Reva",
        password: "password6",
        firstName: "Reva",
        lastName: "Kudchadkar",
        email: "reva.kudchadkar@example.com",
        phone: "+911234567895",
        dateOfBirth: Calendar.current.date(byAdding: .year, value: -19, to: Date())!,
        gender: "Female",
        frequentLocations: [
            Location(
                locationId: "loc6",
                latitude: 15.2993,
                longitude: 74.1240,
                address: Address(
                    id: "addr6",
                    name: "Reva's Home",
                    description: "Beach house in Goa",
                    address: "202 Goa Beach Road",
                    city: "Panaji",
                    state: "Goa",
                    country: "India",
                    zip: "403001"
                )
            )
        ],
        friends: [],
        vehicles: [],
        verificationStatus: true,
        createdAt: Date()
    ),
    User(
        id: 7,
        profileImage: "Ayush",
        password: "password7",
        firstName: "Ayush",
        lastName: "Upadhyay",
        email: "ayush.upadhyay@example.com",
        phone: "+911234567896",
        dateOfBirth: Calendar.current.date(byAdding: .year, value: -20, to: Date())!,
        gender: "Male",
        frequentLocations: [
            Location(
                locationId: "loc7",
                latitude: 26.8467,
                longitude: 80.9462,
                address: Address(
                    id: "addr7",
                    name: "Ayush's Home",
                    description: "Home in Uttar Pradesh",
                    address: "111 Lucknow Road",
                    city: "Lucknow",
                    state: "Uttar Pradesh",
                    country: "India",
                    zip: "226001"
                )
            )
        ],
        friends: [],
        vehicles: [],
        verificationStatus: true,
        createdAt: Date()
    )
]

let impacts: [Impact] = [
    Impact(
        user_id: 1,
        impact_environment: 12.5,
        impact_money: 450.0,
        total_trips: 25,
        total_distance: 120.0,
        rating: 4.8
    ),
    Impact(
        user_id: 2,
        impact_environment: 10.2,
        impact_money: 380.0,
        total_trips: 20,
        total_distance: 90.0,
        rating: 4.9
    ),
    Impact(
        user_id: 3,
        impact_environment: 15.0,
        impact_money: 500.0,
        total_trips: 30,
        total_distance: 150.0,
        rating: 4.7
    ),
    Impact(
        user_id: 4,
        impact_environment: 9.8,
        impact_money: 320.0,
        total_trips: 18,
        total_distance: 80.0,
        rating: 4.6
    ),
    Impact(
        user_id: 5,
        impact_environment: 8.5,
        impact_money: 290.0,
        total_trips: 15,
        total_distance: 75.0,
        rating: 4.5
    ),
    Impact(
        user_id: 6,
        impact_environment: 11.0,
        impact_money: 400.0,
        total_trips: 22,
        total_distance: 110.0,
        rating: 4.8
    ),
    Impact(
        user_id: 7,
        impact_environment: 13.5,
        impact_money: 480.0,
        total_trips: 28,
        total_distance: 140.0,
        rating: 4.7
    )
]
