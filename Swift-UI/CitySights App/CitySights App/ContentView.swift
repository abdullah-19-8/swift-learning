//
//  ContentView.swift
//  CitySights App
//
//  Created by Abdulla Ahmad on 7/11/24.
//

import SwiftUI

struct ContentView: View {
    @State var query: String = ""
    var service = DataService()
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
        .task{
           let businesses = await service.businessSearch()
        }
    }
}

#Preview {
    ContentView()
}
