//
//  ContentView.swift
//  LandmarksV3
//
//  Created by Oscar Epp on 2/9/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        LandmarkList()
    }
}


#Preview {
    ContentView()
        .environment(ModelData())
}
 
