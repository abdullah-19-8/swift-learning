//
//  GalleryView.swift
//  Restaurant
//
//  Created by Abdulla Ahmad on 7/7/24.
//

import SwiftUI

struct GalleryView: View {
    
    @State var photoData = [String]()
    var dataService = DataService()
    var body: some View {
        
        VStack(alignment: .leading) {
            Text("Gallery")
                .font(.largeTitle)
                .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
            GeometryReader{ proxy in
                ScrollView(showsIndicators: false) {
                    LazyVGrid(columns: [GridItem(spacing: 10),
                                        GridItem(spacing: 10),
                                        GridItem(spacing: 10)],
                              spacing: 10){
                        ForEach(photoData, id: \.self) {p in
                            Image(p)
                                .resizable()
                                .aspectRatio(contentMode: .fill)
                                .frame(maxWidth: (proxy.size.width - 20)/3)
                                .clipped()
                        }
                    }
                }
            }
        }
        .padding(.horizontal)
        .onAppear{
            photoData = dataService.getPhotos()
        }
    }
}

#Preview {
    GalleryView()
}
