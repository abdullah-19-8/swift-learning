//
//  City.swift
//  Guidebook
//
//  Created by Abdulla Ahmad on 7/9/24.
//

import Foundation

struct City: Identifiable{
    
    var id = UUID()
    var name: String
    var summary: String
    var imageName: String
    
    var attractions: [Attraction]
}
