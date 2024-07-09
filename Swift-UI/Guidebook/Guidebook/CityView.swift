//
//  ContentView.swift
//  Guidebook
//
//  Created by Abdulla Ahmad on 7/8/24.
//

import SwiftUI

struct CityView: View {
    
    @State var cities = [City]()
    var dataServices = DataServices()
    var body: some View {
        NavigationStack{
            ScrollView{
                VStack {
                    ForEach(cities) {city in
                        
                        NavigationLink{
                            AttractionView(attractions: city.attractions)
                        } label: {
                            CityCard(city: city)
                        }
                    }
                }
                .padding()
                .onAppear{
                    cities = dataServices.getData()
                }
            }
        }
    }
}

#Preview {
    CityView()
}
