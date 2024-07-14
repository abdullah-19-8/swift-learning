//
//  BusinessSearch.swift
//  CitySights App
//
//  Created by Abdulla Ahmad on 7/14/24.
//

import Foundation

struct BusinessSearch: Codable {
    var businesses: [Business]
    var region: Region
    var total: Int
}

struct Region: Codable {
    var center: Center?
}



