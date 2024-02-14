//
//  Family.swift
//  IntroduceYourFamily
//
//  Created by Jordan Fraughton on 2/9/24.
//

import Foundation

enum FamilyMember: String {
    case juli
    case william
    case allie
    case jordan

    var biography: String {
        switch self {
        case .juli:
            return "Cake decorating bad ass mom"
        case .william:
            return "Eat, sleep, poop, smile, repeat"
        case .allie:
            return "Likes to read, play Zelda, and be crazy"
        case .jordan:
            return "Trains so he can help people move couches"
        }
    }
}
