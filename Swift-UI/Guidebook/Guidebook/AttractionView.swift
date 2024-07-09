//
//  AttractionView.swift
//  Guidebook
//
//  Created by Abdulla Ahmad on 7/9/24.
//

import SwiftUI

struct AttractionView: View {
    
    var attractions: [Attraction]
    var body: some View {
        
        NavigationStack{
            ScrollView(showsIndicators: false){
                
                VStack{
                    
                    ForEach(attractions) { attraction in
                        NavigationLink{
                            DetailView(attraction: attraction)
                        } label:{
                            AttractionRow(attraction: attraction)
                                .padding(.bottom, 15)
                        }
                        .buttonStyle(.plain)
                    }
                    
                }
                
            }
            .padding(.horizontal)
        }
    }
}

#Preview {
    AttractionView(attractions: [Attraction(name: "test", summary: "test", longDescription: "Test", imageName: "Test", latLong: "Test")])
}
