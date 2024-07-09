//
//  DetailView.swift
//  Guidebook
//
//  Created by Abdulla Ahmad on 7/9/24.
//

import SwiftUI

struct DetailView: View {
    var attraction: Attraction
    var body: some View {
        Image(attraction.imageName)
        Text(attraction.longDescription)
    }
}

#Preview {
    DetailView(attraction: Attraction(name: "Sensō-ji",
                                      summary: "Sensō-ji is an ancient Buddhist temple located in Asakusa, Tokyo, Japan. It is Tokyo's oldest temple, and one of its most significant..",
                                      longDescription: """
   Sensō-ji (浅草寺, officially Kinryū-zan Sensō-ji (金龍山浅草寺), also known as Asakusa Kannon (浅草観音)) is an ancient Buddhist temple located in Asakusa, Tokyo, Japan. It is Tokyo's oldest temple, and one of its most significant. Formerly associated with the Tendai sect of Buddhism, it became independent after World War II. It is dedicated to Kannon, the bodhisattva of compassion, and is the most widely visited religious site in the world with over 30 million visitors annually. Adjacent to the temple is a five-story pagoda, the Asakusa Shinto shrine, as well as many shops with traditional goods in the Nakamise-dōri.

   The temple has a titanium tiled roof that maintains the historic image but is stronger and lighter.
   """,
                                      imageName: "sensoji", latLong: "35.714974138640066, 139.79667675457168"))
}
