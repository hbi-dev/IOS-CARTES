//
//  ContentView.swift
//  cartes
//
//  Created by hamid on 25/04/2024.
//

import SwiftUI

struct ContentView: View {
    @State var playerCard = "carte4"
    @State var cpuCard = "carte2"
    @State var playerScore = 0
    @State var cpuScore = 0
    
    var body: some View {
        
        ZStack{
            Spacer()
            Image("header")
                .resizable()
                .ignoresSafeArea()
            
            VStack{
                Image("framb")
                    .resizable()
                    .cornerRadius(15)
                    .padding()
                
            Spacer()
                HStack{
                    Spacer()
                    Image(playerCard)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                    Spacer()
                    Image(cpuCard)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                    Spacer()
                }
                Spacer()
                Button{
                    deal()
                } label:{
                    Image("deal")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                }.foregroundColor(.white)
                
                Spacer()
                HStack{
                    Spacer()
                    VStack{
                        Text("Player")
                            .font(.headline)
                            .padding()
                        Text(String(playerScore))
                            .font(.largeTitle)
                    }
                    Spacer()
                    VStack{
                        Text("CPU")
                            .font(.headline)
                            .padding()
                        Text(String(cpuScore))
                            .font(.largeTitle)
                    }
                    Spacer()
                }.foregroundColor(.white)
                Spacer()
            }
        }
    }
    
    func deal(){
        //ramdomize carte
        let playerCardValue = Int.random(in: 2...14)
        playerCard = "carte"+String(playerCardValue)
        
        let cpuCardValue = Int.random(in: 2...14)
        cpuCard = "carte"+String(cpuCardValue)
        if playerCardValue > cpuCardValue {
            playerScore += 1
        } else if playerCardValue < cpuCardValue {
            cpuScore +=  1
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
