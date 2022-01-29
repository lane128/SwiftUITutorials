//
//  LandmarkDetail.swift
//  Landmarks
//
//  Created by Adam Wang on 2022/1/29.
//

import SwiftUI

struct LandmarkDetail: View {
    var landmark: Landmark
    
    var body: some View {
        ScrollView {
            VStack() {
                MapView(coordinate: landmark.locationCoordinate)
                    .frame(height: 300)
                
                CircleImage(image: landmark.image)
                    .frame(height: 120)
                    .offset(y: -65)
                    .padding(.bottom, -65)
                
                VStack(alignment: .leading) {
                    Text(landmark.name)
                        .font(.title)
                        .foregroundColor(.black)
                    
                    HStack {
                        Text(landmark.park)
                            .font(.subheadline)
                            .foregroundColor(.gray)
                        
                        Spacer()
                        
                        Text(landmark.state)
                            .font(.subheadline)
                            .foregroundColor(.secondary)
                    }
                    
                    Divider()
                    
                    Text("About \(landmark.name)")
                        .font(.title2)
                    
                    Text(landmark.description)
                        .font(.subheadline)
                }
                .padding()
            }
        }
        .navigationTitle(landmark.name)
        .navigationBarTitleDisplayMode(.inline)
    }
}

struct LandmarkDetail_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkDetail(landmark: landmarks[1])
    }
}
