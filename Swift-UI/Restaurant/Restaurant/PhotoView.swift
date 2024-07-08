//
//  PhotoView.swift
//  Restaurant
//
//  Created by Abdulla Ahmad on 7/8/24.
//

import SwiftUI

struct PhotoView: View {
    @Binding var selectedPhoto: String
    @Binding var sheetVisible: Bool
    var body: some View {
        ZStack{
            Image(selectedPhoto)
                .resizable()
                .aspectRatio(contentMode: .fit)
            VStack{
                HStack{
                    Spacer()
                    Button{
                        sheetVisible = false
                    } label: {
                        Image(systemName: "x.circle")
                            .scaleEffect(2)
                            .foregroundColor(.black)
                    }
                    .padding()
                }
                Spacer()
            }
        }
    }
}

#Preview {
    PhotoView(selectedPhoto: Binding.constant("gallery1"), sheetVisible: Binding.constant(true))
}
