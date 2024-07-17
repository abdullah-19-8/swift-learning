//
//  ListView.swift
//  CitySights App
//
//  Created by Abdulla Ahmad on 7/18/24.
//

import SwiftUI

struct ListView: View {
    @Environment(BusinessModel.self) var business
    var body: some View {
        List {
            ForEach(business.businesses) {b in
                
                VStack(spacing: 20){
                    HStack(spacing: 0){
                        Image("list-placeholder-image")
                            .padding(.trailing,16)
                        VStack(alignment: .leading){
                            Text(b.name ?? "Restaurant")
                                .font(Font.system(size: 15))
                                .bold()
                            Text(TextHelper.distanceAwayText(meters: b.distance ?? 0))
                                .font(Font.system(size: 16))
                                .foregroundStyle(Color(red: 67/255, green: 71/255, blue: 76/255))
                        }
                        Spacer()
                        Image("regular_\(b.rating ?? 0)")
                    }
                    Divider()
                }
                .onTapGesture {
                    business.selectedBusiness = b
                }
            }
            .listRowSeparator(.hidden)
        }
        .listStyle(.plain)
        
    }
}

#Preview {
    ListView()
        .environment(BusinessModel())
}
