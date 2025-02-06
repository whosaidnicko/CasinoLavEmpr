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
                        Igrusheci(text: "https://html5.gamedistribution.com/rvvASMiM/88adef5e4b2b4776ac9f6264d3055065/index.html?gd_zone_config=eyJwYXJlbnRVUkwiOiJodHRwczovL2h0bWw1LmdhbWVkaXN0cmlidXRpb24uY29tLzg4YWRlZjVlNGIyYjQ3NzZhYzlmNjI2NGQzMDU1MDY1LyIsInBhcmVudERvbWFpbiI6Imh0bWw1LmdhbWVkaXN0cmlidXRpb24uY29tIiwidG9wRG9tYWluIjoiaHRtbDUuZ2FtZWRpc3RyaWJ1dGlvbi5jb20iLCJoYXNJbXByZXNzaW9uIjpmYWxzZSwibG9hZGVyRW5hYmxlZCI6dHJ1ZSwiaG9zdCI6Imh0bWw1LmdhbWVkaXN0cmlidXRpb24uY29tIiwidmVyc2lvbiI6IjEuNS4xNyJ9", ruletk: true)
                    } label: {
                        VStack {
                            Image("rulim")
                            
                            Image("plgame")
                        }
                    }
                    Spacer()
                    NavigationLink {
                        Igrusheci(text: "https://html5.gamedistribution.com/rvvASMiM/6117e3b1665d4bfca6bc3ee51f461a99/index.html?gd_zone_config=eyJwYXJlbnRVUkwiOiJodHRwczovL2h0bWw1LmdhbWVkaXN0cmlidXRpb24uY29tLzYxMTdlM2IxNjY1ZDRiZmNhNmJjM2VlNTFmNDYxYTk5LyIsInBhcmVudERvbWFpbiI6Imh0bWw1LmdhbWVkaXN0cmlidXRpb24uY29tIiwidG9wRG9tYWluIjoiaHRtbDUuZ2FtZWRpc3RyaWJ1dGlvbi5jb20iLCJoYXNJbXByZXNzaW9uIjp0cnVlLCJsb2FkZXJFbmFibGVkIjp0cnVlLCJob3N0IjoiaHRtbDUuZ2FtZWRpc3RyaWJ1dGlvbi5jb20iLCJ2ZXJzaW9uIjoiMS41LjE3In0%253D", ruletk: false)
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
