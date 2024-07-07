//
//  MenuItem.swift
//  Menu
//
//  Created by Abdulla Ahmad on 7/7/24.
//

import Foundation

struct MenuItem : Identifiable {
    
    var id: UUID = UUID()
    var name: String
    var price: String
    var imageName: String
}
