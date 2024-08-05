//
//  OnboardingView.swift
//  CitySights App
//
//  Created by Abdulla Ahmad on 7/18/24.
//

import SwiftUI

struct OnboardingView: View {
    var body: some View {
        TabView{
            OnboardingViewDetails(bgColor: Color(red: 111/255, green: 154/255, blue: 189/255), headline: "Welcome to City Sights", subHeadline: "City Sights helps you find the best of the city!", buttonAction: {
                print("Hello")
            })
            
            OnboardingViewDetails(bgColor: Color(red: 139/255, green: 166/255, blue: 65/255), headline: "Discover your city", subHeadline: "we'll show you the best restaurants, venues, based on your location.", buttonAction: {
                print("Second")
            })
        }
        
        .tabViewStyle(.page)
        .ignoresSafeArea()
    }
}

#Preview {
    OnboardingView()
}
