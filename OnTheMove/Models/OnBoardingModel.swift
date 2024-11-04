//
//  OnBoardingModel.swift
//  OnTheMove
//
//  Created by user@53 on 29/10/24.
//

import Foundation
import UIKit

struct OnBoardingModel {
    let title: String
    let description: String
    let image: String
}

let onboardingData: [OnBoardingModel] = [
    OnBoardingModel(
        title: "Tired of stressful, expensive, and unsafe commutes?",
        description: "We’ve got a smart way to travel.",
        image: "onboarding1"
    ),
    OnBoardingModel(
        title: "Travel safely with verified Pool",
        description: "Join trusted pools with verified users from your community.",
        image: "onboarding2"
    ),
    OnBoardingModel(
        title: "Share Rides, Split Costs",
        description: "No more awkward cash exchanges - let the app handle your payments.",
        image: "onboarding3"
    ),
    OnBoardingModel(
        title: "Safer, Smarter, and Together",
        description: "Reduce traffic, cut down on costs, and protect the environment.",
        image: "onboarding4"
    )
]

