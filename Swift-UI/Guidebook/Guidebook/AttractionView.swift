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
            ScrollView{
                
                VStack{
                    
                    ForEach(attractions) { attraction in
                        NavigationLink{
                            DetailView(attraction: attraction)
                        } label:{
                            /*@START_MENU_TOKEN@*/Text(attraction.name)/*@END_MENU_TOKEN@*/
                        }
                    }
                    
                }
                
            }
        }
    }
}

#Preview {
    AttractionView(attractions: [Attraction(name: "test", summary: "test", longDescription: "Test", imageName: "Test", latLong: "Test")])
}
