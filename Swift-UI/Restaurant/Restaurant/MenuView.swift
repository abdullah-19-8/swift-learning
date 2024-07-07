//
//  MenuView.swift
//  Restaurant
//
//  Created by Abdulla Ahmad on 7/7/24.
//

import SwiftUI

struct MenuView: View {
    
    @State var menuItems:[MenuItem] = [MenuItem]()
    var dataService = DataService()
    
    var body: some View {
       
        List(menuItems) { item in
            MenuListRow(item: item)
                    
        }
        .listStyle(.plain)
        .onAppear{
            // Call for the data
            
           menuItems =  dataService.getData()
        }
    }
}

#Preview {
    MenuView()
}
