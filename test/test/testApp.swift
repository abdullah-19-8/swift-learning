//
//  testApp.swift
//  test
//
//  Created by Abdulla Ahmad on 7/21/24.
//

import SwiftUI

@main
struct testApp: App {
    var body: some Scene {
        DocumentGroup(newDocument: testDocument()) { file in
            ContentView(document: file.$document)
        }
    }
}
