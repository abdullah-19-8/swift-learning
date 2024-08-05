//
//  ContentView.swift
//  test
//
//  Created by Abdulla Ahmad on 7/21/24.
//

import SwiftUI

struct ContentView: View {
    @Binding var document: testDocument

    var body: some View {
        TextEditor(text: $document.text)
    }
}

#Preview {
    ContentView(document: .constant(testDocument()))
}
