//
//  CitySights_AppApp.swift
//  CitySights App
//
//  Created by Abdulla Ahmad on 7/11/24.
//

import SwiftUI

@main
struct CitySights: App {
    var body: some Scene {
        
        @State var business = BusinessModel()
        
        WindowGroup {
            HomeView()
                .environment(business)
        }
    }
}
