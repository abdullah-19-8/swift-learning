//
//  AboutView.swift
//  Restaurant
//
//  Created by Abdulla Ahmad on 7/7/24.
//

import SwiftUI

struct AboutView: View {
    var body: some View {
        ScrollView(showsIndicators: false) {
        
            VStack(alignment: .leading){
                Text("About")
                    .font(.title)
                    .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                
                Image("restaurant-inside")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .padding(.bottom)
                Text("Sukiyabashi Jiro (すきやばし次郎, Sukiyabashi Jirō) is a sushi restaurant in Ginza, Chūō, Tokyo, Japan. It is owned by sushi master Jiro Ono.[2] He also previously operated it as the head chef, but stepped aside in favor of his son Yoshikazu Ono by 2023 due to ill health. [3] It was the first sushi restaurant in the world[4] to receive three stars from the Michelin Guide,[5] although it was removed from the Michelin Guide in November 2019 as it does not receive reservations from the general public,[6][7] instead requiring reservations to be made through the concierge of a luxury hotel")
                
                Image("map")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                
                Text(
                    """
    Tsukamoto Sogyo Building
    Basement Floor 1
    2-15, Ginza 4-chome
    Chūō, Tokyo
    """)
            }
        }
        .padding(.horizontal)
        
    }
}

#Preview {
    AboutView()
}
