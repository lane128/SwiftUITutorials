//
//  LandmarksApp.swift
//  Landmarks
//
//  Created by Adam Wang on 2022/1/29.
//

import SwiftUI

@main
struct LandmarksApp: App {
    @StateObject private var modelData = ModelData()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(modelData)
        }
    }
}
