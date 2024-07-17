//
//  ContentView.swift
//  CitySights App
//
//  Created by Abdulla Ahmad on 7/11/24.
//

import SwiftUI

struct HomeView: View {
    
    @Environment(BusinessModel.self) var business
    @State var selectedTab = 0
    
    var body: some View {
        
        @Bindable var business = business
        
        VStack{
            HStack {
                
                TextField("What are you looking for?", text: $business.query)
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
            
            // Show picker
            Picker("", selection: $selectedTab){
                Text("List")
                    .tag(0)
                Text("Map")
                    .tag(1)
            }
            .pickerStyle(SegmentedPickerStyle())
            
            if selectedTab == 0 {
                ListView()
            }
            else {
                MapView()
            }
        }
        .onAppear{
            business.getBusinesses()
        }
        .sheet(item: $business.selectedBusiness) { business in
            BusinessDetailView()
        }
    }
}

#Preview {
    HomeView().environment(BusinessModel())
}
