//
//  LandmarksV3App.swift
//  LandmarksV3
//
//  Created by Oscar Epp on 2/9/24.
//

import SwiftUI

@main
struct LandmarksApp: App {
    @State private var modelData = ModelData()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(modelData)
        }
    }
}

