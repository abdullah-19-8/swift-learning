//
//  ContentView.swift
//  CitySights App
//
//  Created by Abdulla Ahmad on 7/11/24.
//

import SwiftUI

struct ContentView: View {
    @State var query: String = ""
    var body: some View {
        HStack {
            
            TextField("What are you looking for?", text: $query)
                .textFieldStyle(.roundedBorder)
            Button{
                
            } label: {
                Text("Go")
            }
        }
        .padding()
        .onAppear{
            print(Bundle.main.infoDictionary?["API_KEY"] as? String)
        }
    }
}

#Preview {
    ContentView()
}
