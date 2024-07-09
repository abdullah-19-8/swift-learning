//
//  CityCard.swift
//  Guidebook
//
//  Created by Abdulla Ahmad on 7/9/24.
//

import SwiftUI

struct CityCard: View {
    
    var city: City
    var body: some View {
        ZStack{
            Rectangle()
                .background(content: {
                    Image(city.imageName)
                        .resizable()
                        .aspectRatio(contentMode: /*@START_MENU_TOKEN@*/.fill/*@END_MENU_TOKEN@*/)
                })
                .foregroundStyle(.clear)
                .cornerRadius(15)
            
            
            Rectangle()
                .foregroundStyle(.black)
                .opacity(0.5)
                .cornerRadius(15)
            VStack(alignment: .leading){
                Text(city.name)
                    .font(.largeTitle)
                    .bold()
                Spacer()
                Text(city.summary)
                    .multilineTextAlignment(/*@START_MENU_TOKEN@*/.leading/*@END_MENU_TOKEN@*/)
                   
            } 
            .padding()
            .foregroundStyle(.white)
        }
        .frame(height: 400)
    }
}

#Preview {
    CityCard(city: City(name: "Tokyo", summary: "Tsukiji Market is a major tourist attraction for both domestic and overseas visitors in Tokyo. The area contains retail markets, restaurants, and associated restaurant supply stores.", imageName: "tokyo", attractions: [Attraction]()))
}
