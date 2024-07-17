//
//  BusinessDetailView.swift
//  CitySights App
//
//  Created by Abdulla Ahmad on 7/16/24.
//

import SwiftUI

struct BusinessDetailView: View {
    
    @Environment(BusinessModel.self) var model
    
    
    var body: some View {
        
        let business = model.selectedBusiness
        VStack(spacing: 0){
            ZStack(alignment: .leading){
                Image("detail-placeholder-image")
                    .resizable()
                VStack{
                    Spacer()
                    HStack{
                        Spacer()
                        Image("yelp-attribution-image")
                            .frame(width: 72, height: 36)
                    }
                }
            }
            .frame(height: 164)
            
            if let isClosed = business?.isClosed{
                ZStack(alignment: .leading){
                    Rectangle()
                        .foregroundStyle(isClosed ? .red : .green)
                    Text(isClosed ? "Closed" : "Open")
                        .bold()
                        .foregroundStyle(.white)
                        .padding(.horizontal)
                }
                .frame(height: 36)
            }
            
            ScrollView{
                VStack(alignment: .leading, spacing: 0){
                    
                    Text(business?.name ?? "Business Name")
                        .font(Font.system(size: 21))
                        .bold()
                        .padding(.bottom, 10)
                        .padding(.top, 16)
                    
                    Text("\(business?.location?.address1 ?? "Address"), \(business?.location?.city ?? "City")")
                    
                    Text("\(business?.location?.state ?? "State") \(business?.location?.zipCode ?? "Zip Code"), \(business?.location?.country ?? "Country")")
                        .padding(.bottom, 10)
                    
                    Image("regular_\(business?.rating ?? 0.0)")
                        .padding(.bottom, 16)
                    
                    Divider()
                    
                    HStack{
                        Image(systemName: "phone")
                        Text(business?.phone ?? "07503092747")
                        Spacer()
                        Image(systemName: "arrow.right")
                    }.padding(.vertical, 12)
                    
                    Divider()
                    
                    HStack{
                        Image(systemName: "globe")
                        Text(business?.url ?? "www.website.com")
                            .lineLimit(1)
                        Spacer()
                        Image(systemName: "arrow.right")
                    }.padding(.vertical, 12)
                    
                    Divider()
                    
                    HStack{
                        Image(systemName: "bubble.left.and.bubble.right")
                        Text("\(business?.reviewCount ?? 0) reviews")
                        Spacer()
                        Image(systemName: "arrow.right")
                    }.padding(.vertical, 12)
                    
                    Spacer()
                    
                }
            }
            .padding(.horizontal)
        }
    }
}

#Preview {
    BusinessDetailView()
}
