//
//  Attraction.swift
//  Guidebook
//
//  Created by Abdulla Ahmad on 7/9/24.
//

import Foundation

struct Attraction: Identifiable{
    
    var id = UUID()
    var name: String
    var summary: String
    var longDescription: String
    var imageName: String
    var latLong: String
    
}
