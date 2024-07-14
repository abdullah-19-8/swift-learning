//
//  Businesses.swift
//  CitySights App
//
//  Created by Abdulla Ahmad on 7/14/24.
//

import Foundation

struct Business: Codable {
    let alias: String
    let categories: [Category]
    let coordinates: Center
    let displayPhone: String
    let distance: Double
    let id: String
    let imageURL: String
    let isClosed: Bool
    let location: Location
    let name, phone, price: String
    let rating, reviewCount: Int
    let transactions: [String]
    let url: String
    let businessHours: BusinessHours

    enum CodingKeys: String, CodingKey {
        case alias, categories, coordinates
        case displayPhone = "display_phone"
        case distance, id
        case imageURL = "image_url"
        case isClosed = "is_closed"
        case location, name, phone, price, rating
        case reviewCount = "review_count"
        case transactions, url
        case businessHours = "business_hours"
    }
}


struct Category: Codable {
    let alias, title: String
}

struct Location: Codable {
    let address1, address2, address3, city: String
    let country: String
    let displayAddress: [String]
    let state, zipCode: String

    enum CodingKeys: String, CodingKey {
        case address1, address2, address3, city, country
        case displayAddress = "display_address"
        case state
        case zipCode = "zip_code"
    }
}

struct BusinessHours: Codable {
    let businessHoursOpen: [Open]
    let hoursType: String
    let isOpenNow: Bool

    enum CodingKeys: String, CodingKey {
        case businessHoursOpen = "open"
        case hoursType = "hours_type"
        case isOpenNow = "is_open_now"
    }
}

struct Open: Codable {
    let isOvernight: Bool
    let start, end, day: Int

    enum CodingKeys: String, CodingKey {
        case isOvernight = "is_overnight"
        case start, end, day
    }
}



struct Center: Codable {
    let latitude, longitude: Double
}



