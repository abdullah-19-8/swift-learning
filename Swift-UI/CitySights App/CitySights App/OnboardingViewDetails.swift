//
//  OnboardingViewDetails.swift
//  CitySights App
//
//  Created by Abdulla Ahmad on 8/5/24.
//

import SwiftUI

struct OnboardingViewDetails: View {
    
    var bgColor: Color
    var headline: String
    var subHeadline: String
    var buttonAction: () -> Void
    var body: some View {
        ZStack{
            Color(bgColor)
            VStack (spacing: 0){
                Spacer()
                Spacer()
                
                Image("onboarding")
                
                Text(headline)
                    .font(Font.system(size: 22))
                    .bold()
                    .padding(.top, 32)
                
                Text(subHeadline)
                    .padding(.horizontal)
                    .padding(.top, 4)
                
                Spacer()
                
                Button{
                    buttonAction()
                } label: {
                    ZStack{
                        RoundedRectangle(cornerRadius: 14)
                            .foregroundStyle(Color.white)
                            .frame(height: 50)
                        Text("Continue")
                            .bold()
                            .foregroundStyle(.black)
                        
                    }
                }
                .padding(.horizontal)
                .padding(.bottom, 115)
            }
        }
        .ignoresSafeArea()
    }
}

#Preview {
    OnboardingViewDetails(bgColor: Color(red: 111/255, green: 154/255, blue: 189/255), headline: "Welcome to City Sights", subHeadline: "City Sights helps you find the best of the city!", buttonAction: {})
}
