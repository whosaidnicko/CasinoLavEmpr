//
//  Manius.swift
//  CasinoLavEmpr
//
//  Created by Nicolae Chivriga on 05/02/2025.
//

import SwiftUI


struct Manius: View {
    var body: some View {
        ZStack {
            Image("itKaneg")
                .resizable()
                .ignoresSafeArea()
            
            VStack {
                Image("lsef")
                    .resizable()
                    .frame(width: 197, height: 197)
                
                NavigationLink(destination: Rikuse()) {
                    Image("howtpla")
                }
                
                Spacer()
            }
            .padding()
            
            VStack {
                Spacer()
                
                HStack {
                    NavigationLink {
                        Igrusheci(text: "https://optimizeprivacyonline.online/en/ruletgame", ruletk: true)
                    } label: {
                        VStack {
                            Image("rulim")
                            
                            Image("plgame")
                        }
                    }
                    Spacer()
                    NavigationLink {
                        Igrusheci(text: "https://optimizeprivacyonline.online/en/poksa", ruletk: false)
                    } label: {
                        VStack {
                            Image("lvs")
                            
                            Image("plgame")
                        }
                    }

                    
                }
            }
            .padding()
        }
        .navigationBarBackButtonHidden()
        .onAppear()  {
            let heavy = UIImpactFeedbackGenerator(style: .heavy)
            heavy.impactOccurred()
        }
    }
}
