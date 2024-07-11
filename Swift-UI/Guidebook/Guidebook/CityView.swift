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
            ZStack{
                ScrollView(showsIndicators:false ){
                    VStack {
                        ForEach(cities) {city in
                            
                            NavigationLink{
                                AttractionView(attractions: city.attractions)
                            } label: {
                                CityCard(city: city)
                                    .padding(.bottom, 20)
                            }
                        }
                        .padding(.horizontal)
                    }
                    .ignoresSafeArea()
                    .onAppear{
                        cities = dataServices.getFieldData()
                    }
                }
            }
            
        }
    }
}

#Preview {
    CityView()
}
