//
//  MyRoutes.swift
//  ClewTwo
//
//  Created by Evelyn on 3/19/23.
//

import Foundation

struct MyRoutes: Hashable {
    let startPoint: String
    let endPoint: String
    let location: String
    let distanceMinutes: Double
    let dateRecorded: String
    
    static var allRoutes = [
        MyRoutes(startPoint: "MAC 218", endPoint: "Dining Hall Check-In Desk", location: "Olin College", distanceMinutes: 7.2, dateRecorded: "7/23/2022"),
        MyRoutes(startPoint: "West Hall Front Door", endPoint: "Library Help Desk", location: "Olin College", distanceMinutes: 3.4, dateRecorded: "2/24/2023"),
        MyRoutes(startPoint: "Check In Desk", endPoint: "Parking Lot", location: "Restaurant A", distanceMinutes: 7.2, dateRecorded: "3/02/2023"),
    ]
}
