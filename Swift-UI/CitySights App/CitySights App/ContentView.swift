//
//  ContentView.swift
//  CitySights App
//
//  Created by Abdulla Ahmad on 7/11/24.
//

import SwiftUI

struct ContentView: View {
    @State var businesses = [Business]()
    @State var query: String = ""
    var service = DataService()
    var body: some View {
        VStack{
            HStack {
                
                TextField("What are you looking for?", text: $query)
                    .textFieldStyle(.roundedBorder)
                Button{
                    
                } label: {
                    Text("Go")
                        .padding(.horizontal)
                        .padding(.vertical, 10)
                        .background(.blue)
                        .foregroundStyle(.white)
                        .cornerRadius(10)
                }
            }
            List (businesses) { b in
                Text(b.name ?? "Nill")
            }
        }
        .padding()
        .task{
            businesses = await service.businessSearch()
            
        }
    }
}

#Preview {
    ContentView()
}
