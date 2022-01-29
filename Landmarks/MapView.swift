//
//  MapView.swift
//  Landmarks
//
//  Created by Adam Wang on 2022/1/29.
//

import SwiftUI
import MapKit

struct MapView: View {
    @State private var region = MKCoordinateRegion (
        // 31.214771750419796, 121.55218333708221
        center: CLLocationCoordinate2D(latitude: 31.214771750419796, longitude: 121.55218333708221),
        span: MKCoordinateSpan(latitudeDelta: 0.1, longitudeDelta: 0.1)
    )
    
    var body: some View {
        Map(coordinateRegion: $region)
    }
}

struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView()
    }
}
