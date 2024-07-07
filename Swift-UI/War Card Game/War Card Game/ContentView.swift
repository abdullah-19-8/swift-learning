//
//  ContentView.swift
//  War Card Game
//
//  Created by Abdulla Ahmad on 7/6/24.
//

import SwiftUI

struct ContentView: View {
    
    @State var playerCard = "card7"
    @State var cpuCard = "card13"
    
    @State var playerScore = 0
    @State var cpuScore = 0
    
    
    
    var body: some View {
        ZStack(content: {
            Image("background-plain")
                .resizable()
                .ignoresSafeArea()
            VStack(content: {
                Spacer()
                Image("logo")
                    .padding()
                Spacer()
                HStack(content: {
                    Spacer()
                    Image(playerCard)
                    Spacer()
                    Image(cpuCard)
                    Spacer()
                    
                })
                Spacer()
                
                Button(action: deal, label: {
                    Image("button")
                })
                
                Spacer()
                
                HStack(content: {
                    Spacer()
                    VStack(content: {
                        Text("Player")
                            .font(.headline)
                            .padding(.bottom, 10)
                        Text(String(playerScore))
                            .font(.largeTitle)
                    })
                    Spacer()
                    VStack(content: {
                        Text("CPU")
                            .font(.headline)
                            .padding(.bottom, 10)
                        Text(String(cpuScore))
                            .font(.largeTitle)
                    })
                    Spacer()
                    
                })
                .foregroundColor(.white)
                Spacer()
                
                
                
            
            })
            .padding()
        })
    }
    
    func deal() {
        // Randomize the players card
        var playerCardValue = Int.random(in: 2...14)
        
        playerCard = "card" + String(playerCardValue)
        
        // Randomize the cpu card
        var cpuCardValue = Int.random(in: 2...14)
        
        cpuCard = "card" + String(cpuCardValue)
        
        // update the score
        
        if playerCardValue > cpuCardValue {
            playerScore += 1
        }
        else if cpuCardValue > playerCardValue {
            cpuScore += 1
        }
    }
}

#Preview {
    ContentView()
}
