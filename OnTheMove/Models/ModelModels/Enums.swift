//
//  Enums.swift
//  OnTheMove
//
//  Created by user@53 on 19/11/24.
//

import Foundation

enum Gender: String, Codable {
    case male = "Male"
    case female = "Female"
    case other = "Other"
}

enum Status: String, Codable{
    case Scheduled = "Scheduled"
    case InProgress = "InProgress"
    case Completed = "Completed"
    case Cancelled = "Cancelled"
}
