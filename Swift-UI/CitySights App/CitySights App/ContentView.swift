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
    @State var selectedBusiness: Business?
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
            List {
                ForEach(businesses) {b in
                    
                    VStack(spacing: 20){
                        HStack(spacing: 0){
                            Image("list-placeholder-image")
                                .padding(.trailing,16)
                            VStack(alignment: .leading){
                                Text(b.name ?? "Restaurant")
                                    .font(Font.system(size: 15))
                                    .bold()
                                Text(TextHelper.distanceAwayText(meters: b.distance ?? 0))
                                    .font(Font.system(size: 16))
                                    .foregroundStyle(Color(red: 67/255, green: 71/255, blue: 76/255))
                            }
                            Spacer()
                            Image("regular_\(b.rating ?? 0)")
                        }
                        Divider()
                    }
                    .onTapGesture {
                        selectedBusiness = b
                    }
                }
                .listRowSeparator(.hidden)
            }
        }
        .padding()
        .task{
            businesses = await service.businessSearch()
        }
        .sheet(item: $selectedBusiness) { business in
            BusinessDetailView(business: business)
        }
    }
}

#Preview {
    ContentView()
}
