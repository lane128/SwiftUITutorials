//
//  ContentView.swift
//  Landmarks
//
//  Created by Adam Wang on 2022/1/29.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack() {
            MapView()
                .frame(height: 300)
            
            CircleImage()
                .frame(height: 120)
                .offset(y: -65)
                .padding(.bottom, -65)
            
            VStack(alignment: .leading) {
                Text("世纪公园")
                    .font(.title)
                    .foregroundColor(.black)
                
                HStack {
                    Text("Shanghai, pudong")
                        .font(.subheadline)
                        .foregroundColor(.gray)
                    
                    Spacer()
                    
                    Text("China")
                        .font(.subheadline)
                        .foregroundColor(.secondary)
                }
                
                Divider()
                
                Text("About The location")
                    .font(.title2)
                
                Text("This is the short desc for the location")
                    .font(.subheadline)
            }
            .padding()
            
            Spacer()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
