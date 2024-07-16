//
//  BusinessDetailView.swift
//  CitySights App
//
//  Created by Abdulla Ahmad on 7/16/24.
//

import SwiftUI

struct BusinessDetailView: View {
    var business: Business?
    var body: some View {
        Text(business?.name ?? "Name")
    }
}

#Preview {
    BusinessDetailView(business: nil)
}
