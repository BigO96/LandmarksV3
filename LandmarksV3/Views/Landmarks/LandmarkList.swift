//
//  LandmarkList.swift
//  LandmarksV3
//
//  Created by Oscar Epp on 2/9/24.
//

import SwiftUI

struct LandmarkList: View {
    @Environment(ModelData.self) var modelData
    @State private var showFavoritesOnly = false //!!!
    
    // Filters favorite landmarks
    var filteredLandmarks: [Landmark] {
        modelData.landmarks.filter { landmark in
            (!showFavoritesOnly || landmark.isFavorite)
        }
    }
    
    var body: some View {
        NavigationSplitView {
            List{
                Toggle(isOn: $showFavoritesOnly){
                    Text("Favorites only")
                }
                ForEach(filteredLandmarks) { landmark in
                    NavigationLink {
                        LandmarkDetail(landmark: landmark)
                    } label: {
                        LandmarkRow(landmark: landmark)
                    }
                }
            }
            // Navsplitview title & animation
            .animation(.default, value: filteredLandmarks)
            .navigationTitle("Landmarks")
        // Default text before selecting (iPad)
        } detail: {
            Text("Select a Landmark")
        }
    }
}


#Preview {
    LandmarkList()
        .environment(ModelData()) // !!!
}
