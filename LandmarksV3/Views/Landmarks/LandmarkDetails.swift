//
//  LandmarkDetails.swift
//  LandmarksV3
//
//  Created by Oscar Epp on 2/9/24.
//

import SwiftUI

// struct for detail view
struct LandmarkDetail: View {
    // Defines a landmark var
    var landmark: Landmark
    
    // View
    var body: some View {
        // Allows content to scroll
        ScrollView {
            // Creates a map with defined MapView.swift
            MapView(coordinate: landmark.locationCoordinate)
                .frame(height: 300)
            // Creates a circle image with defined CircleImage.swift
            CircleImage(image: landmark.image)
                .offset(y: -130)
                .padding(.bottom, -130)
            
            // Vertical Stack
            VStack(alignment: .leading){
                Text(landmark.name)
                    .font(.title)
                HStack {
                    Text(landmark.park)
                    Spacer()
                    Text(landmark.state)

                }
                .font(.subheadline)
                .foregroundStyle(.secondary)
                
                Divider()
                
                Text("About \(landmark.name)")
                    .font(.title2)
                Text(landmark.description)
                
            }
            .padding()
        }
        // Labels nav bar
        .navigationTitle(landmark.name)
        // Places nav bar
        .navigationBarTitleDisplayMode(.inline)
    }
}

#Preview {
    LandmarkDetail(landmark: ModelData().landmarks[0])
}
