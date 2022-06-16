//
//  ContentView.swift
//  Landmarks
//
//  Created by Viktor on 16.06.22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            
            MapView()
                .frame(height: 300)
                .ignoresSafeArea(edges: .top)
            
            CircleImage()
                .offset(y:-130)
                .padding(.bottom, -130)
            
            VStack (alignment: .leading){
                Text("Turtle Rock")
                        .font(.title)
                HStack {
                    Text("Joshue Tree National Park")
                    Spacer()
                    Text("California")
                }
                .font(.subheadline)
                .foregroundColor(.secondary)
                
                
                Divider()
                
                Text("About Turtle Rock")
                    .font(.title2)

                Link("Descriptive text goes here.", destination: URL(string: "https://funorangecountyparks.com/turtle-rock-nature-center-community-park.html")!)
                
            }
            .padding()
            
            Spacer()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .previewInterfaceOrientation(.portrait)
    }
}
